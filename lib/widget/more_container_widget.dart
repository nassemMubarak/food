import 'package:flutter/material.dart';

import '../utiils/size_config.dart';

class MoreContainerWidget extends StatelessWidget {
  final String image;
  final String text;
  final int? counter;

  MoreContainerWidget({
   required this.image,
   required this.text,
    this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: SizeConfig.scaleWidth(20),bottom: SizeConfig.scaleHeight(19)),
      child: Stack(
        children: [
          Container(
            height: SizeConfig.scaleHeight(75),
            margin: EdgeInsetsDirectional.only(end: SizeConfig.scaleHeight(25)),
            padding:
                EdgeInsetsDirectional.only(start: SizeConfig.scaleWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(10), topEnd: Radius.circular(10)),
              color: Color(0xFFF6F6F6),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFD8D8D8),
                  radius: 30,
                  child: Image.asset(image),
                ),
                SizedBox(width: SizeConfig.scaleWidth(20)),
                Text(text),
                SizedBox(width: SizeConfig.scaleWidth(90)),
                Visibility(
                  visible: counter==null?false:true,
                  child: Container(
                    alignment: Alignment.center,
                  height: SizeConfig.scaleHeight(20),
                  width: SizeConfig.scaleWidth(20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: Text('$counter',style: TextStyle(
                    color: Colors.white
                  ),),
                ),),
              ],

            ),
          ),
          Positioned(
            top: SizeConfig.scaleHeight(10),
            right: 0,
            child: FloatingActionButton(
                elevation: 0,
                onPressed: () {},
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFF7C7D7E),
                ),
                backgroundColor: Color(0xFFF6F6F6)),
          )
        ],
      ),
    );
  }
}
