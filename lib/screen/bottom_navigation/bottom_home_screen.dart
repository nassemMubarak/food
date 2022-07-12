import 'package:flutter/material.dart';
import 'package:food/utiils/size_config.dart';
import 'package:food/widget/text_field_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../../widget/food_row_widget.dart';
import '../../widget/most_popular_widget.dart';
import '../../widget/popular_restaurents_widget.dart';
import '../../widget/recent_items_widget.dart';

class BottomHomeScreen extends StatefulWidget {
  const BottomHomeScreen({Key? key}) : super(key: key);

  @override
  State<BottomHomeScreen> createState() => _BottomHomeScreenState();
}

class _BottomHomeScreenState extends State<BottomHomeScreen> {
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
  final List<FoodRowWidget> _foodRowWidgetList =[
    FoodRowWidget(image: 'images/food_1.png', title: 'Offers'),
    FoodRowWidget(image: 'images/food_2.png', title: 'Sri Lankan'),
    FoodRowWidget(image: 'images/food_3.png', title: 'Italian'),
    FoodRowWidget(image: 'images/food_4.png', title: 'Indian'),
  ];
  final List<PopularRestaurentsWidget> _popularRestaurentsWidgetList=[
    PopularRestaurentsWidget(image: 'images/popular_restaurents_image/Minute_by_tuk_tuk.png', title: 'Café de Noir', numberStar: '8.9', subTitle: '(124 ratings) Café . Western Food'),
    PopularRestaurentsWidget(image: 'images/popular_restaurents_image/Cafe_de_Noir.png', title: 'Minute by tuk tuk', numberStar: '4.9', subTitle: '(124 ratings) Café . Western Food'),
    PopularRestaurentsWidget(image: 'images/popular_restaurents_image/Bakes_by_Tella.png', title: 'Bakes by Tella', numberStar: '5.7', subTitle: '(124 ratings) Café . Western Food'),
  ];
 final List<MostPopularWidget> _mostPopularWidget=[
   MostPopularWidget(image: 'images/most_popular_image/cafe_de_bambaa.png', title: 'Café De Bambaa', numberStar: '6.3', subTitle: 'Café     Western Food'),
   MostPopularWidget(image: 'images/most_popular_image/burger_by_bella.png', title: 'Burger by Bella', numberStar: '1.3', subTitle: 'Café     Western Food'),

  ];
final List<RecentItemsWidget> _recentItemsWidget=[
    RecentItemsWidget(image: 'images/recent_items/mulberry_pizza.png', title: 'Mulberry Pizza by Josh', numberStar:'2.2' , subTitle:'Café     Western Food', rating: '(400 Ratings)'),
    RecentItemsWidget(image: 'images/recent_items/barita.png', title: 'Barita', numberStar:'1.1' , subTitle:'Café     Coffee', rating: '(124 Ratings)'),
    RecentItemsWidget(image: 'images/recent_items/pizza_rush_hour.png', title: 'Pizza Rush Hour', numberStar:'5.2' , subTitle:'Café     Italian Food', rating: '(504 Ratings)')

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: SizeConfig.scaleWidth(22),
          top: SizeConfig.scaleWidth(22),
          right: SizeConfig.scaleWidth(22)),
      child: ListView(
        children: [
          Text(
            'Delivering to',
            style: TextStyle(
              color: Color(0xFFB6B7B7),
              fontSize: SizeConfig.scaleTextFont(14),
            ),
          ),
          Row(
            children: [
              Text(
                'Current Location',
                style: TextStyle(
                    color: Color(0xFF7C7D7E),
                    fontSize: SizeConfig.scaleTextFont(16),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: SizeConfig.scaleWidth(40)),
              Icon(Icons.expand_more, color: Color(0xFFFC6011)),
            ],
          ),
          SizedBox(height: SizeConfig.scaleHeight(34)),
          TextFieldWidget(
            textEditingController: _textEditingController,
            lable: 'Search food',
            fillColor: Color(0xFFF2F2F2),
            error: '',
            icon: Icons.search_rounded,
          ),
          SizedBox(height: SizeConfig.scaleHeight(30)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _foodRowWidgetList.elementAt(0),
                _foodRowWidgetList.elementAt(1),
                _foodRowWidgetList.elementAt(2),
                _foodRowWidgetList.elementAt(3),
              ],
            ),


          ),
          SizedBox(height: SizeConfig.scaleHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Restaurents',
                style: TextStyle(
                    color: Color(0xFF4A4B4D),
                    fontSize: SizeConfig.scaleTextFont(20),
                    fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: (){}, child: Text('View all',style: TextStyle(
                color: Color(0xFFFC6011),
                  fontSize: SizeConfig.scaleTextFont(13),
                  fontWeight: FontWeight.w500
              ),)),
            ],
          ),
          SizedBox(height: SizeConfig.scaleHeight(20)),
          _popularRestaurentsWidgetList.elementAt(0),
          _popularRestaurentsWidgetList.elementAt(1),
          _popularRestaurentsWidgetList.elementAt(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Most Popular',
                style: TextStyle(
                    color: Color(0xFF4A4B4D),
                    fontSize: SizeConfig.scaleTextFont(20),
                    fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: (){}, child: Text('View all',style: TextStyle(
                  color: Color(0xFFFC6011),
                  fontSize: SizeConfig.scaleTextFont(13),
                  fontWeight: FontWeight.w500
              ),)),
            ],
          ),
          SizedBox(height: SizeConfig.scaleHeight(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _mostPopularWidget.elementAt(0),
                _mostPopularWidget.elementAt(1),
                _mostPopularWidget.elementAt(0),
                _mostPopularWidget.elementAt(1),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Items',
                style: TextStyle(
                    color: Color(0xFF4A4B4D),
                    fontSize: SizeConfig.scaleTextFont(20),
                    fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: (){}, child: Text('View all',style: TextStyle(
                  color: Color(0xFFFC6011),
                  fontSize: SizeConfig.scaleTextFont(13),
                  fontWeight: FontWeight.w500
              ),)),
            ],
          ),
          SizedBox(height: SizeConfig.scaleHeight(20)),
          _recentItemsWidget.elementAt(0),
          _recentItemsWidget.elementAt(1),
          _recentItemsWidget.elementAt(2),
          SizedBox(height: SizeConfig.scaleHeight(40)),
        ],
      ),
    );
  }
}
