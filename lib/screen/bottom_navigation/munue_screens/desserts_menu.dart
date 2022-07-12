import 'package:flutter/material.dart';

import '../../../utiils/size_config.dart';
import '../../../widget/sub_menu_widget.dart';
import '../../../widget/text_field_widget.dart';
class DessertsMenu extends StatefulWidget {
  const DessertsMenu({Key? key}) : super(key: key);

  @override
  State<DessertsMenu> createState() => _DessertsMenuState();
}

class _DessertsMenuState extends State<DessertsMenu> {
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
  final List<SubMenuWidget> _dessertsMenuWidget = [
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_1.png', title: 'French Apple Pie', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_2.png', title: 'Dark Chocolate Cake', numberStar: '6.7', subTitle: 'Cakes by Tella    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_3.png', title: 'Street Shake', numberStar: '9.5', subTitle: 'Café Racer    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_4.png', title: 'Fudgy Chewy Brownies', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_5.jpg', title: 'French Apple Pie', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_6.jpg', title: 'Dark Chocolate Cake', numberStar: '6.7', subTitle: 'Cakes by Tella    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_7.jpg', title: 'Street Shake', numberStar: '9.5', subTitle: 'Café Racer    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_8.jpg', title: 'Fudgy Chewy Brownies', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_9.jpg', title: 'French Apple Pie', numberStar: '8.8', subTitle: 'Minute by tuk tuk    Desserts'),
    SubMenuWidget(image: 'images/menu_image/desserts_menu_images/desserts_image_5.jpg', title: 'Dark Chocolate Cake', numberStar: '6.7', subTitle: 'Cakes by Tella    Desserts'),

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
        title: Text('Desserts',style: TextStyle(color: Color(0xFF4A4B4D),fontSize: SizeConfig.scaleTextFont(20)),),
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
                lable: 'Search Desserts',
                fillColor: Color(0xFFF2F2F2),
                error: '',
                icon: Icons.search_rounded,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 100),
              child: ListView.builder(
                  itemCount: _dessertsMenuWidget.length,
                  itemBuilder: (context,int index){
                return _dessertsMenuWidget.elementAt(index);
              }),
            ),
          ],
        ),
      ),
    );
  }
}