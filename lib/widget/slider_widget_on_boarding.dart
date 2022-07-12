import 'package:flutter/material.dart';

class SliderWidgetOnBoarding extends StatelessWidget {
  final bool selected;
  final double marginEnd;

  SliderWidgetOnBoarding({
    required this.selected,
    this.marginEnd = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: selected?Color(0xFFFC6011):Color(0xFFD6D6D6),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
