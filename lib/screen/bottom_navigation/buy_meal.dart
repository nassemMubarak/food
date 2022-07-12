import 'package:flutter/material.dart';
import 'package:food/utiils/size_config.dart';
import 'package:food/widget/elevated_button_widget.dart';

class BuyMeal extends StatefulWidget {
  const BuyMeal({Key? key}) : super(key: key);

  @override
  State<BuyMeal> createState() => _BuyMealState();
}

class _BuyMealState extends State<BuyMeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: SizeConfig.scaleHeight(375),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/buy_meal_image/buy_meal_image_2.png'),
              fit: BoxFit.fitHeight,
            )),
            child: Container(
              padding: EdgeInsetsDirectional.only(start: SizeConfig.scaleHeight(20),top: SizeConfig.scaleHeight(50)),
              alignment: AlignmentDirectional.topStart,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xAF000000),
                    Color(0x00000000),
                  ],
                ),
              ),
              child: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
                Navigator.pop(context);
              },color: Colors.white),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.scaleHeight(280),
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsetsDirectional.all(SizeConfig.scaleHeight(22)),
            height: SizeConfig.scaleHeight(400),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(SizeConfig.scaleWidth(50)),
                  topStart: Radius.circular(SizeConfig.scaleWidth(50))),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tandoori Chicken Pizza',
                  style: TextStyle(
                    fontSize: SizeConfig.scaleTextFont(22),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                      top: SizeConfig.scaleHeight(6),
                      bottom: SizeConfig.scaleHeight(4)),
                  width: SizeConfig.scaleWidth(140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFEE5A30),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFEE5A30),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFEE5A30),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFEE5A30),
                      ),
                      Icon(Icons.star_border, color: Color(0xFFEE5A30)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '4 Star Ratings',
                      style: TextStyle(
                        color: Color(0xFFEE5A30),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Rs. 750   ' ,
                          style: TextStyle(
                            fontSize: SizeConfig.scaleTextFont(22),
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFEE5A30),
                          ),
                        ),
                        Text('/ per Portion'),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 29,bottom: 17.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: SizeConfig.scaleTextFont(22),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: SizeConfig.scaleHeight(12)),
                      Text(
                        'pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly usually, in a commercial setting, using a wood-fired oven heated to a very high temperature and served hot.',
                        style: TextStyle(
                          fontSize: SizeConfig.scaleTextFont(12),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: SizeConfig.scaleHeight(15),bottom:SizeConfig.scaleHeight(15)),
                  child: Column(
                    children: [
                      Text(
                        'Customize your Order',
                        style: TextStyle(
                          fontSize: SizeConfig.scaleTextFont(22),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                        Container(
                          margin: EdgeInsetsDirectional.only(top: SizeConfig.scaleHeight(20)),
                          padding: EdgeInsetsDirectional.only(start: SizeConfig.scaleWidth(32),end: SizeConfig.scaleWidth(20)),
                          width: double.infinity,
                          height: SizeConfig.scaleHeight(45),
                          color: Color(0xFFF2F2F2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('- Select the size of portion -'),
                              Icon(Icons.expand_more,color: Color(0xFF828282),size: SizeConfig.scaleWidth(25)),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(top: SizeConfig.scaleHeight(20)),
                          padding: EdgeInsetsDirectional.only(start: SizeConfig.scaleWidth(32),end: SizeConfig.scaleWidth(20)),
                          width: double.infinity,
                          height: SizeConfig.scaleHeight(45),
                          color: Color(0xFFF2F2F2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('- Select the ingredients -'),
                              Icon(Icons.expand_more,color: Color(0xFF828282),size: SizeConfig.scaleWidth(25)),

                            ],
                          ),
                        ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
