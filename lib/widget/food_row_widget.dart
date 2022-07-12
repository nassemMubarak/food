import 'package:flutter/material.dart';

import '../utiils/size_config.dart';

class FoodRowWidget extends StatelessWidget {

  final String image;
  final String title;


  FoodRowWidget({
   required this.image,
   required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsetsDirectional.only(end: SizeConfig.scaleWidth(18),),
            width: 88,
            height: 88,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: SizeConfig.scaleHeight(9)),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.scaleTextFont(14),
            fontWeight: FontWeight.bold,
            color: Color(0xFF4A4B4D),
          ),
        ),
      ],
    );
  }
}
