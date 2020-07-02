import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';

import 'color_dot.dart';

class ListProductColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(fillColor: Color(0XFF80989A), isSelected: true),
          ColorDot(fillColor: Colors.red),
          ColorDot(fillColor: kPrimaryColor),
        ],
      ),
    );
  }
}
