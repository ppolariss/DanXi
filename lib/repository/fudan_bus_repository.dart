/*
 *     Copyright (C) 2021  DanXi-Dev
 *
 *     This program is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     This program is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public License
 *     along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'dart:convert';

import 'package:dan_xi/common/constant.dart';
import 'package:dan_xi/model/person.dart';
import 'package:dan_xi/repository/base_repository.dart';
import 'package:dan_xi/repository/uis_login_tool.dart';
import 'package:dan_xi/util/retryer.dart';
import 'package:dan_xi/util/vague_time.dart';
import 'package:dio/src/response.dart';

class FudanBusRepository extends BaseRepositoryWithDio {
  static const String _LOGIN_URL =
      "https://uis.fudan.edu.cn/authserver/login?service=http%3A%2F%2Ftac.fudan.edu.cn%2Fthirds%2Ftjb.act%3Fredir%3DsportScore";
  static const String _INFO_URL =
      "https://zlapp.fudan.edu.cn/fudanbus/wap/default/lists";

  FudanBusRepository._();

  static final _instance = FudanBusRepository._();

  factory FudanBusRepository.getInstance() => _instance;

  Future<List<BusScheduleItem>> loadBusList(PersonInfo info) {
    return Retrier.tryAsyncWithFix(
        () => _loadBusList(),
        (exception) =>
            UISLoginTool.loginUIS(dio, _LOGIN_URL, cookieJar, info, true));
  }

  Future<List<BusScheduleItem>> _loadBusList() async {
    List<BusScheduleItem> items = [];
    Response r = await dio.get(_INFO_URL);
    Map json = r.data is Map ? r.data : jsonDecode(r.data.toString());
    json['d']['data'].forEach((route) {
      if (route['lists'] is List) {
        items.addAll((route['lists'] as List)
            .map((e) => BusScheduleItem.fromRawJson(e)));
      }
    });
    return items;
  }

  @override
  String get linkHost => "zlapp.fudan.edu.cn";
}

class BusScheduleItem implements Comparable<BusScheduleItem> {
  final String id;
  final Campus start;
  final Campus end;
  final VagueTime startTime;
  final VagueTime endTime;
  final BusDirection direction;
  final bool holidayRun;

  VagueTime get realStartTime => startTime ?? endTime;

  const BusScheduleItem(this.id, this.start, this.end, this.startTime,
      this.endTime, this.direction, this.holidayRun);

  factory BusScheduleItem.fromRawJson(Map json) => BusScheduleItem(
      json['id'],
      CampusEx.fromChineseName(json['start']),
      CampusEx.fromChineseName(json['end']),
      (json['stime'] as String).isNotEmpty
          ? VagueTime.onlyMMSS(json['stime'])
          : null,
      (json['etime'] as String).isNotEmpty
          ? VagueTime.onlyMMSS(json['etime'])
          : null,
      BusDirection.values[int.parse(json['arrow'])],
      int.parse(json['holiday']) != 0);

  @override
  int compareTo(BusScheduleItem other) =>
      realStartTime.compareTo(other.realStartTime);
}

enum BusDirection {
  NONE,
  DUAL,

  /// From end to start
  BACKWARD,

  /// From start to end
  FORWARD
}
