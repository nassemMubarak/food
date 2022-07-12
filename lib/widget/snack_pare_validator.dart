import 'package:flutter/material.dart';
void SnackPareValidator(
    {required BuildContext context,
      required bool selected,
      required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: selected == true ? Colors.green : Colors.red,
      behavior: SnackBarBehavior.floating,
      content:Text(text,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Cabin'),),
    ),
  );
}