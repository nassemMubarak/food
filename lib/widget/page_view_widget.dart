import 'package:flutter/material.dart';

import '../utiils/size_config.dart';

class PageViewWidget extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;
   double turns;

  PageViewWidget({
   required this.image,
   required this.title,
   required this.subTitle,
   required this.turns,
  });

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: SizeConfig.scaleHeight(207),
          left: SizeConfig.scaleWidth(20),
          right: SizeConfig.scaleWidth(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedRotation(turns: widget.turns, duration: Duration(seconds: 1),child: Image.asset(widget.image),),
          SizedBox(height: SizeConfig.scaleHeight(80)),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: SizeConfig.scaleTextFont(30),
              color: Color(0xFF4A4B4D),
            ),
          ),
          SizedBox(height: SizeConfig.scaleHeight(12)),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(40)),
            child: Text(
              widget.subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: SizeConfig.scaleTextFont(14),
                color: Color(0xFF7C7D7E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
