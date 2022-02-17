import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/1003031519.jpg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.55)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Addressing world problems \nthrough Artificial Intelligence",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                !Responsive.isMobileLarge(context)
                    ? Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                _launchURL(
                                    "mailto:technical.hardik29@gmail.com?subject=Get In Touch and Connection Request");
                              },
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: primaryColor,
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding * 2,
                                    vertical: defaultPadding),
                                backgroundColor: Colors.transparent,
                                onSurface: Colors.amber,
                              ),
                              child: Text(
                                "Contact Me",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(width: 10),
                          ElevatedButton(
                              onPressed: () {
                                _launchURL(
                                    "https://drive.google.com/file/d/1g_eBAUxdriFEX1ekWSWXPjDMynGixVUX/view?usp=sharing");
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding * 2,
                                    vertical: defaultPadding),
                                backgroundColor: primaryColor,
                              ),
                              child: Text(
                                "Get Resume",
                                style: TextStyle(color: darkColor),
                              )),
                        ],
                      )
                    : Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                _launchURL(
                                    "mailto:technical.hardik29@gmail.com?subject=Get In Touch and Connection Request");
                              },
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: primaryColor,
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding * 1,
                                    vertical: defaultPadding),
                                backgroundColor: Colors.transparent,
                                onSurface: Colors.amber,
                              ),
                              child: Text(
                                "Contact Me",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              )),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              _launchURL(
                                  "https://drive.google.com/file/d/1g_eBAUxdriFEX1ekWSWXPjDMynGixVUX/view?usp=sharing");
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding * 0.75,
                                  vertical: defaultPadding),
                              backgroundColor: primaryColor,
                            ),
                            child: Text(
                              "Get Resume",
                              style: TextStyle(color: darkColor, fontSize: 11),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          // Text("I build "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          "I solve logical problems using Machine Learning.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "I create algorithms that enable machines take intelligent decisions.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "I work on Applied Machine Learning projects and Full Stack Software Development.",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "dev",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
