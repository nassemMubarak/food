import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food/utiils/size_config.dart';

import '../../widget/elevated_button_widget.dart';
import '../../widget/snack_pare_validator.dart';
import '../../widget/text_field_widget.dart';
class BottomProfileScreen extends StatefulWidget {
  const BottomProfileScreen({Key? key}) : super(key: key);

  @override
  State<BottomProfileScreen> createState() => _BottomProfileScreenState();
}

class _BottomProfileScreenState extends State<BottomProfileScreen> {
  // @override
  // Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsetsDirectional.only(start: SizeConfig.scaleWidth(21),end: SizeConfig.scaleWidth(21),bottom:SizeConfig.scaleHeight(50)),
//
//     );
//   }
// }
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _confirmPasswordTextEditingController;
  late TextEditingController _nameTextEditingController;
  late TextEditingController _addressTextEditingController;
  late TextEditingController _mobileNoTextEditingController;
  late TapGestureRecognizer _logInTapGestureRecognizer;
  late String _emailError = '';
  late String _passwordError = '';
  late String _confirmPasswordError = '';
  late String _nameError = '';
  late String _addressError = '';
  late String _mobileNoError = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _confirmPasswordTextEditingController = TextEditingController();
    _nameTextEditingController = TextEditingController();
    _addressTextEditingController = TextEditingController();
    _mobileNoTextEditingController = TextEditingController();
    _logInTapGestureRecognizer = TapGestureRecognizer()..onTap = logInListener;
  }

  void logInListener() {
    Navigator.pushReplacementNamed(context, '/log_in_screen');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _confirmPasswordTextEditingController.dispose();
    _nameTextEditingController.dispose();
    _addressTextEditingController.dispose();
    _mobileNoTextEditingController.dispose();
    _logInTapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.only(
            bottom: SizeConfig.scaleHeight(20),
            // top: SizeConfig.scaleHeight(60),
        ),
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Container(
                        margin: EdgeInsetsDirectional.only(top: 50),
                        alignment: AlignmentDirectional.topCenter,
                        height: SizeConfig.scaleHeight(40),
                       decoration: BoxDecoration(
                         color: Colors.black38,
                         borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(45 ),bottomStart: Radius.circular(45)),
                       ),
                        child: IconButton(onPressed: (){},icon: Icon(Icons.camera_alt,color: Color(0xFF707070),),),
                      ),
                      radius: 50,
                      backgroundImage: AssetImage('images/nassem.jpg'),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},icon: Icon(Icons.edit,color: Color(0xFFFC6011),)),
                  Text('Edit Profile',style: TextStyle(
                    color: Color(0xFFFC6011),
                  ),),
                ],
              ),
              Text(
                'Hi there Emilia!',
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(25),
                  color: Color(0xFF4A4B4D),
                ),
              ),
              SizedBox(height: SizeConfig.scaleHeight(12)),
              Text(
                'Sign Out',
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(14),
                  color: Color(0xFF7C7D7E),
                ),
              ),
              SizedBox(height: SizeConfig.scaleHeight(36)),
              Container(
                // height: SizeConfig.scaleHeight(224),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFieldWidget(
                      keyboardtype: TextInputType.text,
                      error: _nameError,
                      textEditingController: _nameTextEditingController,
                      lable: 'Name',
                      value: 'Nassem Ahmed Mubarak',
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    TextFieldWidget(
                      keyboardtype: TextInputType.emailAddress,
                      error: _emailError,
                      textEditingController: _emailTextEditingController,
                      lable: 'Email',
                      value: 'nassemmubarak@gmail.com',
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    TextFieldWidget(
                      keyboardtype: TextInputType.number,
                      error: _mobileNoError,
                      textEditingController: _mobileNoTextEditingController,
                      lable: 'Mobile No',
                      value: '+970-592-815-701',
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    TextFieldWidget(
                      keyboardtype: TextInputType.text,
                      error: _addressError,
                      textEditingController: _addressTextEditingController,
                      lable: 'Address',
                      value: 'Gaza-beitLahia',
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    TextFieldWidget(
                        scurtype: true,
                        keyboardtype: TextInputType.visiblePassword,
                        error: _passwordError,
                        textEditingController: _passwordTextEditingController,
                        lable: 'Password',
                        value: '*********',
                        fillColor: Color(0xFFF2F2F2)),
                    TextFieldWidget(
                        scurtype: true,
                        keyboardtype: TextInputType.visiblePassword,
                        error: _confirmPasswordError,
                        textEditingController: _confirmPasswordTextEditingController,
                        lable: 'Confirm Password',
                        value: '*********',
                        fillColor: Color(0xFFF2F2F2)),
                    ElevatedButtonWidget(
                      text: 'Save',
                      onPress: () {
                        setState(() {
                          chickInput();
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.scaleHeight(24)),
            ],
          ),
        ),
    );
  }

  bool chickInput() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty&&_nameTextEditingController.text.isNotEmpty&&
        _confirmPasswordTextEditingController.text.isNotEmpty&&
        _mobileNoTextEditingController.text.isNotEmpty&&
        _addressTextEditingController.text.isNotEmpty
    ) {
      ConfermPassword();
    }else{
      selectInputError();

    }
    return false;
  }

  void save() {
    setState(() {
      // Navigator.pushReplacementNamed(context, '/log_in_screen');
    });
  }

  void selectInputError() {
    setState(() {
      _emailTextEditingController.text.isEmpty
          ? _emailError = 'Email is Empty'
          : _emailError = '';
      _nameTextEditingController.text.isEmpty
          ? _nameError = 'Name is Empty'
          : _nameError = '';
      _mobileNoTextEditingController.text.isEmpty
          ? _mobileNoError = 'mobile No is Empty'
          : _mobileNoError = '';
      _addressTextEditingController.text.isEmpty
          ? _addressError = 'Address is Empty'
          : _addressError = '';
      _passwordTextEditingController.text.isEmpty
          ? _passwordError = 'password is Empty'
          : _passwordError = '';
      _confirmPasswordTextEditingController.text.isEmpty
          ? _confirmPasswordError = 'Confirm Password is Empty'
          : _confirmPasswordError = '';
      _confirmPasswordTextEditingController.text.isEmpty
          ? SnackPareValidator(
          context: context, selected: false, text: 'Empty Inputs')
          : '';
    });
  }
  bool ConfermPassword(){
    if(_passwordTextEditingController.text == _confirmPasswordTextEditingController.text){
      SnackPareValidator(
          context: context, selected: true, text: 'Successfully');
      save();
      return true;
    }else{
      setState((){
        _confirmPasswordError = 'Confirm Password Not Equal Password';
        SnackPareValidator(
            context: context, selected: false, text: 'Confirm Password Not Equal Password');
      });
    }
    return false;
  }
}
