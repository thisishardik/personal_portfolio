import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/models/PositionsOfResp.dart';
import 'package:personal_portfolio/models/Work.dart';

class PositionsOfRespCard extends StatelessWidget {
  const PositionsOfRespCard({
    Key? key,
    required this.positionsOfResp,
  }) : super(key: key);

  final PositionsOfResp positionsOfResp;

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
                  positionsOfResp.companyName!,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              Text(
                positionsOfResp.location!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(positionsOfResp.position!),
              Text(positionsOfResp.duration!),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(
            positionsOfResp.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}