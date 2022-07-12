import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../../utiils/size_config.dart';
import '../../widget/elevated_button_widget.dart';
import '../../widget/snack_pare_validator.dart';
import '../../widget/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsetsDirectional.only(
            bottom: SizeConfig.scaleHeight(20),
            top: SizeConfig.scaleHeight(60)),
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                AppLocalizations.of(context)!.sign_up,
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(30),
                  color: Color(0xFF4A4B4D),
                ),
              ),
              SizedBox(height: SizeConfig.scaleHeight(12)),
              Text(
                AppLocalizations.of(context)!.add_your_details_to_sign_up,
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(14),
                  color: Color(0xFF7C7D7E),
                ),
              ),
              SizedBox(height: SizeConfig.scaleHeight(36)),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFieldWidget(
                      keyboardtype: TextInputType.text,
                      error: _nameError,
                      textEditingController: _nameTextEditingController,
                      lable: AppLocalizations.of(context)!.name,
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    TextFieldWidget(
                      keyboardtype: TextInputType.emailAddress,
                      error: _emailError,
                      textEditingController: _emailTextEditingController,
                      lable: AppLocalizations.of(context)!.your_email,
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    TextFieldWidget(
                      keyboardtype: TextInputType.number,
                      error: _mobileNoError,
                      textEditingController: _mobileNoTextEditingController,
                      lable: AppLocalizations.of(context)!.mobile_no,
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    TextFieldWidget(
                      keyboardtype: TextInputType.text,
                      error: _addressError,
                      textEditingController: _addressTextEditingController,
                      lable: AppLocalizations.of(context)!.address,
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    TextFieldWidget(
                        scurtype: true,
                        keyboardtype: TextInputType.visiblePassword,
                        error: _passwordError,
                        textEditingController: _passwordTextEditingController,
                        lable: AppLocalizations.of(context)!.password,
                        fillColor: Color(0xFFF2F2F2)),
                    TextFieldWidget(
                        scurtype: true,
                        keyboardtype: TextInputType.visiblePassword,
                        error: _confirmPasswordError,
                        textEditingController: _confirmPasswordTextEditingController,
                        lable: AppLocalizations.of(context)!.confirm_password,
                        fillColor: Color(0xFFF2F2F2)),
                    ElevatedButtonWidget(
                      text: AppLocalizations.of(context)!.sign_up,
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
              RichText(
                text: TextSpan(
                  text:  AppLocalizations.of(context)!.already_have_an_account,
                  style: const TextStyle(
                    color: Color(0xFF707070),
                  ),
                  children: [
                    TextSpan(
                      recognizer: _logInTapGestureRecognizer,
                      text: AppLocalizations.of(context)!.login,
                      style: const TextStyle(
                        color: Color(0xFFFC6011),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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

  void SinUp() {
    setState(() {
      Navigator.pushReplacementNamed(context, '/log_in_screen');
    });
  }
  void selectInputError() {
    setState(() {
      _emailTextEditingController.text.isEmpty
          ? _emailError = AppLocalizations.of(context)!.email_is_empty
          : _emailError = '';
      _nameTextEditingController.text.isEmpty
          ? _nameError = AppLocalizations.of(context)!.name_is_Empty
          : _nameError = '';
      _mobileNoTextEditingController.text.isEmpty
          ? _mobileNoError = AppLocalizations.of(context)!.mobile_is_Empty
          : _mobileNoError = '';
      _addressTextEditingController.text.isEmpty
          ? _addressError = AppLocalizations.of(context)!.address_is_Empty
          : _addressError = '';
      _passwordTextEditingController.text.isEmpty
          ? _passwordError = AppLocalizations.of(context)!.password_is_empty
          : _passwordError = '';
      _confirmPasswordTextEditingController.text.isEmpty
          ? _confirmPasswordError = AppLocalizations.of(context)!.confirm_password
          : _confirmPasswordError = '';
      _confirmPasswordTextEditingController.text.isEmpty
          ? SnackPareValidator(
              context: context, selected: false, text: AppLocalizations.of(context)!.empty_input)
          : '';
    });
  }
  bool ConfermPassword(){
    if(_passwordTextEditingController.text == _confirmPasswordTextEditingController.text){
      SnackPareValidator(
          context: context, selected: true, text: AppLocalizations.of(context)!.successfully);
          SinUp();
      return true;
    }else{
      setState((){
        _confirmPasswordError = AppLocalizations.of(context)!.confirm_password_not_equals;
        SnackPareValidator(
            context: context, selected: false, text: AppLocalizations.of(context)!.confirm_password_not_equals);
      });
    }
    return false;
  }
}
