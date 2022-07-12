import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food/screen/bottom_navigation/bottom_navigation_main_screen.dart';
import 'package:food/screen/bottom_navigation/buy_meal.dart';
import 'package:food/screen/bottom_navigation/munue_screens/beverages_menu.dart';
import 'package:food/screen/bottom_navigation/munue_screens/desserts_menu.dart';
import 'package:food/screen/bottom_navigation/munue_screens/food_menu.dart';
import 'package:food/screen/bottom_navigation/munue_screens/promotions_menu.dart';
import 'package:food/screen/launch_screen.dart';
import 'package:food/screen/main_screen.dart';
import 'package:food/screen/on_boarding/main_screen_on_boarding.dart';
import 'package:food/screen/registration/log_in_screen.dart';
import 'package:food/screen/registration/reset_password/new_password_screen.dart';
import 'package:food/screen/registration/reset_password/reset_password_screen.dart';
import 'package:food/screen/registration/reset_password/sent_your_mobile_screen.dart';
import 'package:food/screen/registration/sign_up_screen.dart';
import 'package:food/screen/storage/shared_pref_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().createSharedPref();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String chickLgIn(){
    if(SharedPrefController().getIsLogIn!=null){
     return SharedPrefController().getIsLogIn==true?'/bottom_navigation_bar_main_screen':'/launch_screen';
    }
    return '/launch_screen';
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        Locale('ar',''),
        Locale('en','')
      ],
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'Cabin',
            fontSize: 13,
          ),
          button: TextStyle(
          fontFamily: 'Cabin',
          fontSize: 16,
          ),
        ),
      ),
      initialRoute:chickLgIn(),
      routes: {
        '/launch_screen':(context)=>const LaunchScreen(),
        '/main_screen':(context)=>const MainScreen(),
        '/log_in_screen':(context)=>const LoginScreen(),
        '/sign_up_screen':(context)=>const SignUpScreen(),
        '/reset_password_screen':(context)=>ResetPasswordScreen(),
        '/sent_your_mobile_screen':(context)=>SentYourMobileScreen(),
        '/new_password_screen':(context)=>const NewPasswordScreen(),
        '/main_screen_on_boarding':(context)=>const MainScreenOnBoarding(),
        '/bottom_navigation_bar_main_screen':(context)=>const BottomNavigationBarMainScreen(),
        '/desserts_menu':(context)=>const DessertsMenu(),
        '/food_menu':(context)=>const FoodMenu(),
        '/beverages_menu':(context)=>const BeveragesMenu(),
        '/promotions_menu':(context)=>const PromotionsMenu(),
        '/buy_meal':(context)=>const BuyMeal(),
      },
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
    );
  }
}
