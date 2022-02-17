import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Programming Languages",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.78,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.78,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "SQL",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "JavaScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "XML",
        ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.85,
        //   label: "REST",
        // ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.58,
        //   label: "MySQL",
        // ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.58,
        //   label: "PostgreSQL",
        // ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.58,
        //   label: "MongoDB",
        // ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.58,
        //   label: "Redux",
        // ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.58,
        //   label: "Flask",
        // ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.58,
        //   label: "AWS",
        // ),
      ],
    );
  }
}
