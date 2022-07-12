import 'package:flutter/material.dart';
import 'package:food/utiils/size_config.dart';
import 'package:food/widget/elevated_button_widget.dart';

import '../../widget/popular_restaurents_widget.dart';
class BottomOffersScreen extends StatefulWidget {
  const BottomOffersScreen({Key? key}) : super(key: key);

  @override
  State<BottomOffersScreen> createState() => _BottomOffersScreenState();
}

class _BottomOffersScreenState extends State<BottomOffersScreen> {
  final List<PopularRestaurentsWidget> _popularRestaurentsWidgetList=[
    PopularRestaurentsWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_2.png', title: 'Donut Cake', numberStar: '8.9', subTitle: '(124 ratings) Café . Western Food'),
    PopularRestaurentsWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_1.png', title: 'omelette', numberStar: '3.9', subTitle: '(124 ratings) Café . Western Food'),
    PopularRestaurentsWidget(image: 'images/popular_restaurents_image/Cafe_de_Noir.png', title: 'Mix eggs with bread with toma', numberStar: '6.6', subTitle: '(124 ratings) Café . Western Food'),
    PopularRestaurentsWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_3.png', title: 'Nutella bouillon', numberStar: '9.9', subTitle: '(124 ratings) Café . Western Food'),
    PopularRestaurentsWidget(image: 'images/popular_restaurents_image/Bakes_by_Tella.png', title: 'Mixed pastries', numberStar: '5.7', subTitle: '(124 ratings) Café . Western Food'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 10,end: 10,top: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text('Find discounts, Offers special meals and more!',style: TextStyle(
                fontSize: SizeConfig.scaleTextFont(14),
                color: Color(0xFF7C7D7E),
              ),),
            SizedBox(height: SizeConfig.scaleHeight(22)),
            Container(
                width: SizeConfig.scaleWidth(207),
                child: ElevatedButtonWidget(text: 'Check Offers')),
            SizedBox(height: SizeConfig.scaleHeight(20)),
            _popularRestaurentsWidgetList.elementAt(0),
            _popularRestaurentsWidgetList.elementAt(1),
            _popularRestaurentsWidgetList.elementAt(2),
            _popularRestaurentsWidgetList.elementAt(3),
            _popularRestaurentsWidgetList.elementAt(4),
          ],
        ),
      ),
    );
  }
}
