import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';

class ColorDot extends StatelessWidget {
  final Color fillColor;
  final bool isSelected;

  const ColorDot({Key key, this.fillColor, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // left and right padding 8
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isSelected ? Color(0XFF707070) : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillColor),
      ),
    );
  }
}
