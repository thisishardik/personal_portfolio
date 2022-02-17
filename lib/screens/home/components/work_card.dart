import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/models/Work.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({
    Key? key,
    required this.workExp,
  }) : super(key: key);

  final Work workExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 220,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: Text(
                  workExp.companyName!,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              Text(
                workExp.location!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(workExp.position!),
              Text(workExp.duration!),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(
            workExp.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}