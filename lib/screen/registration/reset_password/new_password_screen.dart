import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../../../utiils/size_config.dart';
import '../../../widget/elevated_button_widget.dart';
import '../../../widget/snack_pare_validator.dart';
import '../../../widget/text_field_widget.dart';
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  late TextEditingController _newPasswordTextEditingController;
  late TextEditingController _confirmPasswordTextEditingController;
   String _newPasswordError ='';
   String _confirmPasswordError ='';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _newPasswordTextEditingController = TextEditingController();
    _confirmPasswordTextEditingController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose

    _newPasswordTextEditingController.dispose();
    _confirmPasswordTextEditingController.dispose();
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
                      AppLocalizations.of(context)!.enter_the_new_password,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.scaleTextFont(14),
                        color: Color(0xFF7C7D7E),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(60)),
                  TextFieldWidget(scurtype: true,textEditingController: _newPasswordTextEditingController, lable: AppLocalizations.of(context)!.new_password, fillColor: Color(0xFFF2F2F2), error:_newPasswordError ),
                  SizedBox(height: SizeConfig.scaleHeight(5)),
                  TextFieldWidget(scurtype: true,textEditingController: _confirmPasswordTextEditingController, lable: AppLocalizations.of(context)!.confirm_password, fillColor: Color(0xFFF2F2F2), error:_confirmPasswordError ),
                  SizedBox(height: SizeConfig.scaleHeight(34)),
                  ElevatedButtonWidget(text: 'Send',onPress: (){
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
    if (_newPasswordTextEditingController.text.isNotEmpty&&_confirmPasswordTextEditingController.text.isNotEmpty) {
      ConfermPassword()?SnackPareValidator(context: context, selected: true, text: 'Successfully'):false;
      return true;
    }
    SnackPareValidator(context: context, selected: false, text: AppLocalizations.of(context)!.empty_input);
    selectInputError();
    return false;
  }
  void next() {
    setState((){
      Navigator.pushReplacementNamed(context, '/log_in_screen');
    });
  }
  void selectInputError() {
    setState((){
      _newPasswordTextEditingController.text.isEmpty?_newPasswordError = AppLocalizations.of(context)!.new_password_Empty:_newPasswordError='';
      _confirmPasswordTextEditingController.text.isEmpty?_confirmPasswordError = AppLocalizations.of(context)!.confirm_password_empty:_confirmPasswordError='';
    });
  }
  bool ConfermPassword(){
    if(_newPasswordTextEditingController.text == _confirmPasswordTextEditingController.text){
      next();
      return true;
    }else{
      SnackPareValidator(context: context, selected: false, text: AppLocalizations.of(context)!.confirm_password_not_equals);
      setState((){
        _confirmPasswordError = AppLocalizations.of(context)!.confirm_password_not_equals;
      });
    }
    return false;
  }

}

