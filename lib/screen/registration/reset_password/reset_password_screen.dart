import 'package:flutter/material.dart';
import 'package:food/widget/elevated_button_widget.dart';
import 'package:food/widget/text_field_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../../../utiils/size_config.dart';
import '../../../widget/snack_pare_validator.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPasswordScreen> {
  late TextEditingController _emailTextEditingController;
   String _emailError ='';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsetsDirectional.only(
              bottom: SizeConfig.scaleHeight(20),
              top: SizeConfig.scaleHeight(100)),
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppLocalizations.of(context)!.reset_password,
                    style: TextStyle(
                      fontSize: SizeConfig.scaleTextFont(30),
                      color: Color(0xFF4A4B4D),
                    ),
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(12)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(50)),
                    child: Text(
                      AppLocalizations.of(context)!.contains_reset_password,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.scaleTextFont(14),
                        color: Color(0xFF7C7D7E),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(60)),
                  TextFieldWidget(textEditingController: _emailTextEditingController, lable: AppLocalizations.of(context)!.your_email, fillColor: Color(0xFFF2F2F2), error:_emailError ),
                  SizedBox(height: SizeConfig.scaleHeight(34)),
                  ElevatedButtonWidget(text: AppLocalizations.of(context)!.send,onPress: (){
                    setState((){
                      chickInput();
                    });
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool chickInput() {
    if (_emailTextEditingController.text.isNotEmpty) {
      SnackPareValidator(context: context, selected: true, text: 'Successfully');
      send();
      return true;
    }
    selectInputError();
    return false;
  }
  void send() {
    setState((){
      Navigator.pushReplacementNamed(context, '/sent_your_mobile_screen');
    });
  }
  void selectInputError() {
    setState((){
      _emailTextEditingController.text.isEmpty?_emailError = 'Email is Empty':_emailError='';
      _emailTextEditingController.text.isEmpty?SnackPareValidator(context: context, selected: false, text: _emailError):'';
    });
  }

}

