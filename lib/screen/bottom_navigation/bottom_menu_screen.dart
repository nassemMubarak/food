import 'package:flutter/material.dart';
import 'package:food/screen/bottom_navigation/munue_screens/desserts_menu.dart';
import '../../utiils/size_config.dart';
import '../../widget/menu_container_widget.dart';
import '../../widget/text_field_widget.dart';

class BottomMenuScreen extends StatefulWidget {
  const BottomMenuScreen({Key? key}) : super(key: key);

  @override
  State<BottomMenuScreen> createState() => _BottomMenuScreenState();
}

class _BottomMenuScreenState extends State<BottomMenuScreen> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: 0,
          bottom: SizeConfig.scaleHeight(40),
          top: SizeConfig.scaleHeight(100),
          width: SizeConfig.scaleWidth(97),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(50), bottomEnd: Radius.circular(50)),
              color: Color(0xFFFC6011),
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(height: SizeConfig.scaleHeight(10)),
            Container(
              child: TextFieldWidget(
                textEditingController: _textEditingController,
                lable: 'Search food',
                fillColor: Color(0xFFF2F2F2),
                error: '',
                icon: Icons.search_rounded,
              ),
            ),
            Padding(
              padding:
                  EdgeInsetsDirectional.only(top: SizeConfig.scaleHeight(50)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MenuContainerWidget(onTap: (){
                      Navigator.pushNamed(context, '/food_menu');
                    },title: 'Food',image: 'images/menu_image/menu_food.png',subTitle: '120 Items'),
                    SizedBox(height: SizeConfig.scaleHeight(20)),
                    MenuContainerWidget(onTap: (){
                      Navigator.pushNamed(context, '/beverages_menu');
                    },title: 'Beverages',image: 'images/menu_image/menu_beverages.png',subTitle: '220 Items'),
                    SizedBox(height: SizeConfig.scaleHeight(20)),
                    MenuContainerWidget(onTap: (){
                     Navigator.pushNamed(context, '/desserts_menu');
                    },title: 'Desserts',image: 'images/menu_image/menu_desserts.png',subTitle: '155 Items'),
                    SizedBox(height: SizeConfig.scaleHeight(20)),
                    MenuContainerWidget(onTap: (){
                      Navigator.pushNamed(context, '/promotions_menu');
                    },title: 'Promotions',image: 'images/menu_image/menu_promotions.png',subTitle: '25 Items'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
