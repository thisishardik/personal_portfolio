import 'package:flutter/material.dart';
import 'package:personal_portfolio/models/Recommendation.dart';
import 'package:personal_portfolio/models/Work.dart';
import 'package:personal_portfolio/screens/home/components/recommendation_card.dart';
import 'package:personal_portfolio/screens/home/components/work_card.dart';

import '../../../constants.dart';

class WorkExp extends StatelessWidget {
  const WorkExp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Work Experience",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                work_experiences.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: WorkCard(
                    workExp: work_experiences[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

