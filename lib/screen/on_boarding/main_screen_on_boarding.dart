import 'package:flutter/material.dart';
import 'package:food/screen/storage/shared_pref_controller.dart';
import 'package:food/utiils/size_config.dart';
import 'package:food/widget/elevated_button_widget.dart';
import 'package:food/widget/slider_widget_on_boarding.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../../widget/page_view_widget.dart';

class MainScreenOnBoarding extends StatefulWidget {
  const MainScreenOnBoarding({Key? key}) : super(key: key);

  @override
  State<MainScreenOnBoarding> createState() => _MainScreenOnBoardingState();
}

class _MainScreenOnBoardingState extends State<MainScreenOnBoarding> {
  late PageController _pageController;
  int _currentPage =0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (int selected){
              setState((){
                _currentPage = selected;
                turns += 10/10;
              });
            },
            controller: _pageController,
            children: [
              PageViewWidget(
                turns: turns,
                  image: 'images/on_boarding_1.png',
                  title: AppLocalizations.of(context)!.title_on_boarding_1,
                  subTitle:
                  AppLocalizations.of(context)!.contains_on_boarding_1,),
              PageViewWidget(
                  turns: turns,
                  image: 'images/on_boarding_2.png',
                  title: AppLocalizations.of(context)!.title_on_boarding_2,
                  subTitle:
                  AppLocalizations.of(context)!.contains_on_boarding_2,),
              PageViewWidget(
                  turns: turns,
                  image: 'images/on_boarding_3.png',
                  title: AppLocalizations.of(context)!.title_on_boarding_3,
                  subTitle:
                  AppLocalizations.of(context)!.contains_boarding_3,),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.scaleHeight(320),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderWidgetOnBoarding(selected: _currentPage==0,marginEnd: 8),
                SliderWidgetOnBoarding(selected: _currentPage==1,marginEnd: 8),
                SliderWidgetOnBoarding(selected: _currentPage==2),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.scaleHeight(111),
            child: Container(
                margin:
                    EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
                child: ElevatedButtonWidget(text: AppLocalizations.of(context)!.next,onPress: (){
                  _currentPage==2?Navigator.pushReplacementNamed(context, '/bottom_navigation_bar_main_screen'):_pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
                  _currentPage==2?SharedPrefController().changeLogIn(true):'';
                  },)),
          ),
        ],
      ),
    );
  }
}
