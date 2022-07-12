import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String lable;
  final Color fillColor;
  final String error;
  final TextInputType? keyboardtype;
  final bool? scurtype;
  final IconData? icon;
  final String? value;

  TextFieldWidget({
   required this.textEditingController,
   required this.lable,
   required this.fillColor,
    required this.error,
     this.keyboardtype,
     this.scurtype,
     this.icon,
     this.value,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardtype??TextInputType.text,
      obscureText: scurtype??false,
      controller: textEditingController,
      decoration: InputDecoration(
        helperText: error,
        helperStyle: TextStyle(
          color: Colors.red,
          fontFamily: 'Cabin',
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: value!=null?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lable, style: const TextStyle(color: Color(0xFFB6B7B7))),
                  Text(value!, style: const TextStyle(color: Color(0xFF4A4B4D)))
                ],
              )
              :Text(lable, style: const TextStyle(color: Color(0xFFB6B7B7))),
        ),
        filled: true,
        prefixIcon: icon!=null?Icon(icon):null,
        fillColor: fillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
