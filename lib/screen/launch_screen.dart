import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food/screen/main_screen.dart';
import 'package:food/utiils/size_config.dart';
import 'dart:math' as math;
class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, '/main_screen');
    });
  }
  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 3))..repeat();
  double turns = 0.0;
  void _changeRotation() {
    setState(() => turns +=10.0 / 10.0);
  }
  @override
  Widget build(BuildContext context) {
    _changeRotation();
    SizeConfig().init(context);
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/launch_screen.png'),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedRotation(turns: turns, duration: Duration(seconds: 1),
            child:Image.asset('images/Monkey_face.png'),
          ),
          SizedBox(height: SizeConfig.scaleHeight(14)),
          RichText(
            text: const TextSpan(
              text: 'Meal ',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFC6011),
              ),
              children: [
                TextSpan(
                  text: 'Monkey',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF4A4B4D),
                  ),
                ),
              ],
            ),
          ),
          Text('Food Delivery',style: TextStyle(
            color: Color(0xFF4A4B4D),
            fontSize: SizeConfig.scaleTextFont(10),
          ),),
        ],
      ),
    );
  }
}
