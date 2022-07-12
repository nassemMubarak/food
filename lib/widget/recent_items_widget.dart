import 'package:flutter/material.dart';

import '../utiils/size_config.dart';

class RecentItemsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String numberStar;
  final String subTitle;
  final String rating;

  RecentItemsWidget({
    required this.image,
    required this.title,
    required this.numberStar,
    required this.subTitle,
    required this.rating,

  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: SizeConfig.scaleHeight(10),end:SizeConfig.scaleHeight(10) ),
      child: Row(
        children: [
          Image.asset(image),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: SizeConfig.scaleWidth(22)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Color(0xFF4A4B4D),
                      fontSize: SizeConfig.scaleTextFont(20),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Color(0xFFB6B7B7),
                    fontSize: SizeConfig.scaleTextFont(16),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xFFFC6011)),
                    Text(
                      numberStar,
                      style: TextStyle(
                          color: Color(0xFFFC6011),
                          fontSize: SizeConfig.scaleTextFont(13),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: SizeConfig.scaleWidth(7)),
                    Text(
                      rating,
                      style: TextStyle(
                          color: Color(0xFFB6B7B7),
                          fontSize: SizeConfig.scaleTextFont(16),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
