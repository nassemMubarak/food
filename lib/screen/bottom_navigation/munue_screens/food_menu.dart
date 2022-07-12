import 'package:flutter/material.dart';

import '../../../utiils/size_config.dart';
import '../../../widget/sub_menu_widget.dart';
import '../../../widget/text_field_widget.dart';
class FoodMenu extends StatefulWidget {
  const FoodMenu({Key? key}) : super(key: key);

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
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
  final List<SubMenuWidget> _subMenuWidget = [
    SubMenuWidget(image: 'images/menu_image/food_menu/food_menu_1.jpg', title: 'Hummus Fatteh', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/food_menu/food_menu_2.jpg', title: 'golden pie', numberStar: '6.7', subTitle: 'Cakes by Tella    Desserts'),
    SubMenuWidget(image: 'images/menu_image/food_menu/food_menu_3.jpg', title: 'hot dog sandwich', numberStar: '9.5', subTitle: 'Café Racer    Desserts'),
    SubMenuWidget(image: 'images/menu_image/food_menu/food_menu_4.jpg', title: 'we discuss', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/food_menu/food_menu_5.jpg', title: 'Appetizer', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/food_menu/food_menu_7.jpg', title: 'shish peacock', numberStar: '9.5', subTitle: 'Café Racer    Desserts'),
    SubMenuWidget(image: 'images/menu_image/food_menu/food_menu_8.jpg', title: 'Fried chicken', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/food_menu/food_menu_9.jpg', title: 'Grilled chicken', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            setState(()=>Navigator.pop(context));
          },
          icon: Icon(Icons.arrow_back_ios_new),color: Color(0xFF4A4B4D),),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Food',style: TextStyle(color: Color(0xFF4A4B4D),fontSize: SizeConfig.scaleTextFont(20)),),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.shopping_cart,color: Color(0xFF4A4B4D),)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(21),
              child: TextFieldWidget(
                textEditingController: _textEditingController,
                lable: 'Search food',
                fillColor: Color(0xFFF2F2F2),
                error: '',
                icon: Icons.search_rounded,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 100),
              child: ListView.builder(
                  itemCount: _subMenuWidget.length,
                  itemBuilder: (context,int index){
                    return _subMenuWidget.elementAt(index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
