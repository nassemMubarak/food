import 'package:flutter/material.dart';

import '../../../utiils/size_config.dart';
import '../../../widget/sub_menu_widget.dart';
import '../../../widget/text_field_widget.dart';
class BeveragesMenu extends StatefulWidget {
  const BeveragesMenu({Key? key}) : super(key: key);

  @override
  State<BeveragesMenu> createState() => _BeveragesMenuState();
}

class _BeveragesMenuState extends State<BeveragesMenu> {
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
    SubMenuWidget(image: 'images/menu_image/beverages_menu_image/beverages_image_1.jpg', title: 'long espresso', numberStar: '3.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/beverages_menu_image/beverages_image_2.jpg', title: 'Mixed coffee', numberStar: '6.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/beverages_menu_image/beverages_image_3.jpg', title: 'black coffee', numberStar: '1.1', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/beverages_menu_image/beverages_image_4.jpg', title: 'cardamom coffee', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/beverages_menu_image/beverages_image_5.jpg', title: 'Espresso with milk', numberStar: '9.9', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/beverages_menu_image/beverages_image_6.jpg', title: 'long espresso', numberStar: '9.9', subTitle: 'Minute by tuk tuk    Desserts'),

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
        title: Text('Beverages',style: TextStyle(color: Color(0xFF4A4B4D),fontSize: SizeConfig.scaleTextFont(20)),),
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
                lable: 'Search Beverages',
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
