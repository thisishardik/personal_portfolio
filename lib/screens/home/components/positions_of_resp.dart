import 'package:flutter/material.dart';
import 'package:personal_portfolio/models/PositionsOfResp.dart';
import 'package:personal_portfolio/screens/home/components/positions_of_resp_card.dart';


import '../../../constants.dart';

class PositionsOfResponsibility extends StatelessWidget {
  const PositionsOfResponsibility({
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
            "Positions of Responsibility",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                positions_of_responsibility.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: PositionsOfRespCard(
                    positionsOfResp: positions_of_responsibility[index],
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

