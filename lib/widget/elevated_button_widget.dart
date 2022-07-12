import 'package:flutter/material.dart';

import '../utiils/size_config.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final String? image;
  final Color? color;
  final Function()? onPress;

  ElevatedButtonWidget({required this.text,this.image,this.color,this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPress??(){},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, SizeConfig.scaleHeight(56)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        primary: color??Color(0xFFFC6011),
      ),
      child: image==null?Text(text):
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image!),
            SizedBox(width: SizeConfig.scaleWidth(32)),
            Text(text),
          ],
        ),
      ),
    );
  }
}
