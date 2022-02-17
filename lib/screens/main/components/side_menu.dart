import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Education",
                      text: "SRM University",
                    ),
                    AreaInfoText(
                      title: "Degree",
                      text: "B.Tech",
                    ),
                    AreaInfoText(
                      title: "Course",
                      text: "Computer Science Engineering with specialization in Big Data Analytics",
                    ),
                    AreaInfoText(
                      title: "CGPA",
                      text: "9.56",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: FittedBox(
                    //     child: Row(
                    //       children: [
                    //         Text(
                    //           "DOWNLOAD CV",
                    //           style: TextStyle(
                    //             color: Theme.of(context)
                    //                 .textTheme
                    //                 .bodyText1!
                    //                 .color,
                    //           ),
                    //         ),
                    //         SizedBox(width: defaultPadding / 2),
                    //         SvgPicture.asset("assets/icons/download.svg")
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              _launchURL("https://www.linkedin.com/in/hardik-srivastava-2911hs/");
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchURL("https://github.com/thisishardik");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchURL("https://leetcode.com/user9422Zm/");
                            },
                            icon: SvgPicture.asset("assets/icons/leetcode.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchURL("https://www.hackerrank.com/Aarsh105");
                            },
                            icon: SvgPicture.asset("assets/icons/hackerrank.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

}
