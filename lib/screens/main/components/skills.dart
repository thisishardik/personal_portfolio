import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Relevant Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.85,
                label: "Machine Learning",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                label: "NLP",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                label: "Image Processing",
              ),
            ),
          ],
        ),
        SizedBox(height: 18.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.75,
                label: "Data Wrangling",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.75,
                label: "Data Visualization",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: "Full Stack \nDeveloper",
              ),
            ),
          ],
        ),
        // SizedBox(height: 18.0),
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Expanded(
        //       child: AnimatedCircularProgressIndicator(
        //         percentage: 0.8,
        //         label: "React",
        //       ),
        //     ),
        //     SizedBox(width: defaultPadding),
        //     Expanded(
        //       child: AnimatedCircularProgressIndicator(
        //         percentage: 0.75,
        //         label: "Django",
        //       ),
        //     ),
        //     SizedBox(width: defaultPadding),
        //     Expanded(
        //       child: AnimatedCircularProgressIndicator(
        //         percentage: 0.75,
        //         label: "Node.js",
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
