/*
 *     Copyright (C) 2022  DanXi-Dev
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

import 'package:dan_xi/common/constant.dart';
import 'package:dan_xi/model/danke/course_group.dart';
import 'package:dan_xi/model/danke/course_review.dart';
import 'package:dan_xi/model/danke/search_results.dart';
import 'package:dan_xi/page/danke/course_review_editor.dart';
import 'package:dan_xi/provider/fduhole_provider.dart';
import 'package:dan_xi/provider/settings_provider.dart';
import 'package:dan_xi/repository/base_repository.dart';
import 'package:dan_xi/repository/opentreehole/opentreehole_repository.dart';
import 'package:dan_xi/util/io/user_agent_interceptor.dart';
import 'package:dan_xi/util/opentreehole/jwt_interceptor.dart';
import 'package:dio/dio.dart';

class CurriculumBoardRepository extends BaseRepositoryWithDio {
  static const String _BASE_URL = "https://danke.fduhole.com/api";
  static const String _BASE_AUTH_URL = "https://auth.fduhole.com/api";

  CurriculumBoardRepository._() {
    dio.interceptors.add(JWTInterceptor(
        "$_BASE_AUTH_URL/refresh",
        () => provider.token,
        (token) => provider.token =
            SettingsProvider.getInstance().fduholeToken = token));
    dio.interceptors.add(
        UserAgentInterceptor(userAgent: Uri.encodeComponent(Constant.version)));

    // First fetch of the course list is VERY SLOW
    dio.options = BaseOptions(
        receiveDataWhenStatusError: true,
        connectTimeout: 30000,
        receiveTimeout: 30000,
        sendTimeout: 10000);
  }

  /// Short name for the provider singleton
  FDUHoleProvider get provider => FDUHoleProvider.getInstance();

  Map<String, String> get _tokenHeader {
    if (provider.token == null || !provider.token!.isValid) {
      throw NotLoginError("Null Token");
    }
    return {"Authorization": "Bearer ${provider.token!.access!}"};
  }

  static final _instance = CurriculumBoardRepository._();

  factory CurriculumBoardRepository.getInstance() => _instance;

  // Return raw json string
  Future<CourseSearchResults?> searchCourseGroups(String keyword,
      {int? page, int pageLength = Constant.SEARCH_COUNT_PER_PAGE}) async {
    Response<Map<String, dynamic>> response = await dio.get(
        "$_BASE_URL/v3/course_groups/search",
        queryParameters: {
          'query': keyword,
          'page': page ?? 1,
          'page_size': pageLength
        },
        options: Options(headers: _tokenHeader));
    return CourseSearchResults.fromJson(response.data!);
  }

  Future<CourseGroup?> getCourseGroup(int groupId) async {
    Response<Map<String, dynamic>> response = await dio.get(
        "$_BASE_URL/v3/course_groups/$groupId",
        options: Options(headers: _tokenHeader));
    return CourseGroup.fromJson(response.data!);
  }

  Future<CourseReview?> addReview(CourseReviewEditorText review) async {
    Response<Map<String, dynamic>> response = await dio.post(
        "$_BASE_URL/courses/${review.courseId}/reviews",
        data: {
          'title': review.title,
          'content': review.content,
          'rank': review.grade
        },
        options: Options(headers: _tokenHeader));
    return CourseReview.fromJson(response.data!);
  }

  Future<int?> removeReview(int reviewId) async {
    Response<String> response = await dio.delete("$_BASE_URL/reviews/$reviewId",
        options: Options(headers: _tokenHeader));
    return response.statusCode;
  }

  Future<int?> modifyReview(
      int reviewId, CourseReviewEditorText updatedReview) async {
    Response<String> response = await dio.put("$_BASE_URL/reviews/$reviewId",
        data: {
          'title': updatedReview.title,
          'content': updatedReview.content,
          'rank': updatedReview.grade
        },
        options: Options(headers: _tokenHeader));
    return response.statusCode;
  }

  Future<CourseReview> voteReview(int reviewId, bool upVote) async {
    Response<dynamic> response = await dio.patch("$_BASE_URL/reviews/$reviewId",
        data: {
          'upvote': upVote,
        },
        options: Options(headers: _tokenHeader));
    return CourseReview.fromJson(response.data ?? "");
  }

  Future<List<CourseReview>?> getReviews(String courseId) async {
    Response<List<dynamic>> response = await dio.get(
        "$_BASE_URL/courses/$courseId/reviews",
        options: Options(headers: _tokenHeader));
    return response.data?.map((e) => CourseReview.fromJson(e)).toList();
  }

  Future<CourseReview?> getRandomReview() async {
    // debugPrint(SettingsProvider.getInstance().fduholeToken!.access!);
    Response<dynamic> response = await dio.get("$_BASE_URL/reviews/random",
        options: Options(headers: _tokenHeader));
    return CourseReview.fromJson(response.data ?? "");
  }

  @override
  String get linkHost => 'danke.fduhole.com';
}
