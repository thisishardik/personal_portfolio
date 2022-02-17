import 'package:flutter/material.dart';

import '../../../constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title!,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Text(text!,
              // overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
