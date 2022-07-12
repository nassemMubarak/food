import 'package:flutter/material.dart';
import 'package:food/utiils/size_config.dart';

import '../../widget/more_container_widget.dart';
class BottomMoreScreen extends StatefulWidget {
  const BottomMoreScreen({Key? key}) : super(key: key);

  @override
  State<BottomMoreScreen> createState() => _BottomMoreScreenState();
}

class _BottomMoreScreenState extends State<BottomMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: EdgeInsetsDirectional.only(start: SizeConfig.scaleWidth(20),top: SizeConfig.scaleHeight(20)),
      child: ListView(
        children: [
          MoreContainerWidget(image: 'images/more_image/more_image_1.png',text: 'Payment Details'),
          MoreContainerWidget(image: 'images/more_image/more_image_2.png',text: 'My Orders'),
          MoreContainerWidget(image: 'images/more_image/more_image_3.png',text: 'Notifications',counter: 15,),
          MoreContainerWidget(image: 'images/more_image/more_image_4.png',text: 'Inbox'),
          MoreContainerWidget(image: 'images/more_image/more_image_5.png',text: 'About Us'),
        ],
      ),
    );
  }
}
