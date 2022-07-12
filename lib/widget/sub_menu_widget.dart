import 'package:flutter/material.dart';

import '../utiils/size_config.dart';

class SubMenuWidget extends StatelessWidget {
  final String image;
  final String title;
  final String numberStar;
  final String subTitle;

  SubMenuWidget({
   required this.image,
   required this.title,
   required this.numberStar,
   required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: SizeConfig.scaleHeight(10)),
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      height: SizeConfig.scaleHeight(200),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
          alignment: Alignment.center
          )),
      child: Container(
        padding: EdgeInsetsDirectional.only(
            bottom: SizeConfig.scaleHeight(20),
            start: SizeConfig.scaleWidth(20)),
        alignment: AlignmentDirectional.bottomStart,
        width: double.infinity,
        height: SizeConfig.scaleHeight(100),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x00000000),
                Color(0xFF000000),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: SizeConfig.scaleTextFont(18),
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: SizeConfig.scaleHeight(6)),
            Row(
              children: [
                Icon(Icons.star, color: Color(0xFFFC6011)),
                Text(
                  numberStar,
                  style: TextStyle(
                      color: Color(0xFFFC6011),
                      fontSize: SizeConfig.scaleTextFont(12),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: SizeConfig.scaleWidth(7)),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: Color(0xFFB6B7B7),
                      fontSize: SizeConfig.scaleTextFont(16),
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
