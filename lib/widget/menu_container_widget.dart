import 'package:flutter/material.dart';

import '../utiils/size_config.dart';

class MenuContainerWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final Function() onTap;
  MenuContainerWidget({
   required this.image,
   required this.title,
   required this.subTitle,
   required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20),
      height: SizeConfig.scaleHeight(87),
      width: SizeConfig.scaleWidth(377),
      child: Stack(
        children: [
          Positioned(
            left: SizeConfig.scaleWidth(40),
            right: SizeConfig.scaleWidth(20),
            top: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsetsDirectional.only(
                  top: SizeConfig.scaleHeight(20),
                  start: SizeConfig.scaleWidth(80)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xFF4A4B4D),
                        fontSize: SizeConfig.scaleTextFont(22),
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: Color(0xFFB6B7B7),
                      fontSize: SizeConfig.scaleTextFont(11),
                    ),
                  ),
                ],
              ),
              width: SizeConfig.scaleWidth(100),
              height: SizeConfig.scaleHeight(80),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x1F000000),
                    offset: Offset(5, 0),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Color(0x1F000000),
                    offset: Offset(0, 5),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Color(0x1F000000),
                    offset: Offset(-5, 0),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Color(0x1F000000),
                    offset: Offset(0, -5),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(30),
                  bottomStart: Radius.circular(30),
                  topEnd: Radius.circular(10),
                  bottomEnd: Radius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(image,width:105,),
          ),
          Positioned(
            right: 8,
            top: 0,
            bottom: 0,
            child: FloatingActionButton(
              onPressed:onTap,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFFC6011),
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
