import 'package:flutter/material.dart';

import '../utiils/size_config.dart';

class MostPopularWidget extends StatelessWidget {
  final String image;
  final String title;
  final String numberStar;
  final String subTitle;

  MostPopularWidget({
    required this.image,
    required this.title,
    required this.numberStar,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(image),
          ),
          SizedBox(height: SizeConfig.scaleHeight(7)),
          Text(
            title,
            style: TextStyle(
                color: Color(0xFF4A4B4D),
                fontSize: SizeConfig.scaleTextFont(16),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: SizeConfig.scaleHeight(5)),
          Row(
            children: [
              Text(
                subTitle,
                style: TextStyle(
                    color: Color(0xFFB6B7B7),
                    fontSize: SizeConfig.scaleTextFont(16),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: SizeConfig.scaleWidth(26)),
              Icon(Icons.star, color: Color(0xFFFC6011)),
              Text(
                numberStar,
                style: TextStyle(
                    color: Color(0xFFFC6011),
                    fontSize: SizeConfig.scaleTextFont(13),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.scaleHeight(31)),
        ],
      ),
    );
  }
}
