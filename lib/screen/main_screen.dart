import 'package:flutter/material.dart';
import 'package:food/utiils/size_config.dart';

import '../widget/elevated_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1),(){
      setState(()=>_changTurns());
    });
  }
  double turns = 0.0;
  void _changTurns(){
    setState(()=>turns += 10/10);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: SizeConfig.scaleHeight(400),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/Organe_top_shape.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center),
            ),
            child: AnimatedRotation(turns: turns,child: Image.asset('images/Monkey_face.png'),duration: Duration(seconds: 1)),
          ),
          SizedBox(height: SizeConfig.scaleHeight(14)),
          Column(
            children: [
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
              Text(
                AppLocalizations.of(context)!.food_delivery,
                style: TextStyle(
                  color: Color(0xFF4A4B4D),
                  fontSize: SizeConfig.scaleTextFont(10),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.scaleWidth(52),
                vertical: SizeConfig.scaleWidth(40)),
            child:  Text(
                AppLocalizations.of(context)!.definition_app,
                textAlign: TextAlign.center),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
            child: Column(
              children: [
                ElevatedButtonWidget(text: AppLocalizations.of(context)!.login,onPress: (){
                  Navigator.pushReplacementNamed(context, '/log_in_screen');
                },),
                SizedBox(height: SizeConfig.scaleHeight(20)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/sign_up_screen');
                  },
                  child:Text(
                    AppLocalizations.of(context)!.create_an_account,
                    style: TextStyle(
                      color: Color(0xFFFC6011),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, SizeConfig.scaleHeight(56)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                        side: BorderSide(
                          color: Color(0xFFFC6011),
                        )),
                    primary: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
