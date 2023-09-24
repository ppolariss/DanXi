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

import 'package:dan_xi/generated/l10n.dart';
import 'package:dan_xi/model/danke/course_review.dart';
import 'package:dan_xi/util/platform_universal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../opentreehole/treehole_widgets.dart';

Color? getDefaultCardBackgroundColor(
        BuildContext context, bool hasBackgroundImage) =>
    hasBackgroundImage
        ? Theme.of(context).cardTheme.color?.withOpacity(0.8)
        : null;

class RandomReviewWidgets extends StatelessWidget {
  // changeable style of the card
  final bool translucent;
  final void Function()? onTap;

  final CourseReview review;

  const RandomReviewWidgets(
      {Key? key, required this.review, this.translucent = false, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: _buildCard(context));
  }

  _buildCard(BuildContext context) {
    // style of the card
    final TextStyle infoStyle =
        TextStyle(color: Theme.of(context).hintColor, fontSize: 12);

    return Card(
      color: translucent
          ? Theme.of(context).cardTheme.color?.withOpacity(0.8)
          : null,
      // credits group
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ListTile(
          contentPadding: const EdgeInsets.fromLTRB(0, 3, 0, 2),
          onTap: onTap ?? () {},
          title: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 4,
              children: [
                Column(
                  children: [
                    // course name, department name, course code and credits
                    Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Text(review.course!.code!,
                            style: const TextStyle(color: Colors.white24))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // use Expanded wrap the text to avoid overflow
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // todo add card information style
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${review.course?.department} / ${review.course?.name}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      softWrap: true,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 4, 12, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      OTLeadingTag(
                                        color: Colors.orange,
                                        text:
                                            "${review.course!.credit!.toStringAsFixed(1)} ${S.of(context).credits}",
                                      ),
                                      Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.thumb_up_outlined,
                                            size: infoStyle.fontSize,
                                            color: infoStyle.color,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          const Text(
                                            '2',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                              ListTile(
                                  dense: true,
                                  minLeadingWidth: 16,
                                  leading: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Icon(
                                      PlatformX.isMaterial(context)
                                          ? Icons.sms_outlined
                                          : CupertinoIcons.quote_bubble,
                                      color: Theme.of(context).hintColor,
                                    ),
                                  ),
                                  title: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Text(
                                        review.content!,
                                        maxLines: 6,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
        ),
        // rating and comment count
      ]),
    );
  }
}
