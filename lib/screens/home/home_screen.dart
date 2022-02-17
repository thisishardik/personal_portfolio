import 'package:flutter/material.dart';
import 'package:personal_portfolio/screens/home/components/my_work_exp.dart';
import 'package:personal_portfolio/screens/home/components/positions_of_resp.dart';
import 'package:personal_portfolio/screens/main/main_screen.dart';

import 'components/highlights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        // HighLightsInfo(),
        WorkExp(),
        MyProjects(),
        PositionsOfResponsibility(),
        // Recommendations(),
      ],
    );
  }
}
