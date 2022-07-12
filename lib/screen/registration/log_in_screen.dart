import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food/utiils/size_config.dart';
import 'package:food/widget/elevated_button_widget.dart';
import 'package:food/widget/snack_pare_validator.dart';
import 'package:food/widget/text_field_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TapGestureRecognizer _signUpTapGestureRecognizer;
  late TapGestureRecognizer _forgotPasswordTapGestureRecognizer;
  late  String _emailError = '';
  late String _passwordError = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _signUpTapGestureRecognizer = TapGestureRecognizer()
      ..onTap = signUpListener;
    _forgotPasswordTapGestureRecognizer = TapGestureRecognizer()
      ..onTap = forgotPassword;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _signUpTapGestureRecognizer.dispose();
    _forgotPasswordTapGestureRecognizer.dispose();
    super.dispose();
  }

  void signUpListener() {
    Navigator.pushReplacementNamed(context, '/sign_up_screen');
  }

  void forgotPassword() {
    Navigator.pushReplacementNamed(context, '/reset_password_screen');
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
                AppLocalizations.of(context)!.login,
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(30),
                  color: Color(0xFF4A4B4D),
                ),
              ),
              SizedBox(height: SizeConfig.scaleHeight(12)),
              Text(
                AppLocalizations.of(context)!.add_your_details_to_login,
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
                      keyboardtype: TextInputType.emailAddress,
                      error: _emailError,
                        textEditingController: _emailTextEditingController,
                        lable:AppLocalizations.of(context)!.your_email,
                        fillColor: Color(0xFFF2F2F2)),
                    TextFieldWidget(
                      keyboardtype: TextInputType.visiblePassword,
                      error: _passwordError,
                        textEditingController: _passwordTextEditingController,
                        lable: AppLocalizations.of(context)!.password,
                        fillColor: Color(0xFFF2F2F2)),
                    ElevatedButtonWidget(text: AppLocalizations.of(context)!.login,onPress: (){
                      setState((){
                        chickInput();
                      });
                    },),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 49),
                  child: RichText(
                    text: TextSpan(
                      recognizer: _forgotPasswordTapGestureRecognizer,
                      text: AppLocalizations.of(context)!.forget_your_password,
                      style: const TextStyle(
                        color: Color(0xFF707070),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.scaleHeight(24),
                    bottom: SizeConfig.scaleHeight(49)),
                child: Text(
                  AppLocalizations.of(context)!.or_login_with,
                  style: TextStyle(
                    fontSize: SizeConfig.scaleTextFont(14),
                    color: Color(0xFF7C7D7E),
                  ),
                ),
              ),
              ElevatedButtonWidget(
                  onPress: (){
                    setState((){
                    });
                  },
                  text: AppLocalizations.of(context)!.login_with_facebook,
                  image: 'images/facebook-letter-logo.png',
                  color: Color(0xFF367FC0)),
              SizedBox(height: SizeConfig.scaleHeight(20)),
              ElevatedButtonWidget(
                  text: AppLocalizations.of(context)!.login_with_google,
                  image: 'images/google-plus-logo.png',
                  color: Color(0xFFDD4B39)),
              SizedBox(height: SizeConfig.scaleHeight(53)),
              RichText(
                text: TextSpan(
                  text: AppLocalizations.of(context)!.do_not_have_an_account,
                  style: const TextStyle(
                    color: Color(0xFF707070),
                  ),
                  children: [
                    TextSpan(
                      recognizer: _signUpTapGestureRecognizer,
                      text: AppLocalizations.of(context)!.sign_up,
                      style: const TextStyle(
                        color: Color(0xFFFC6011),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool chickInput() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      SnackPareValidator(context: context, selected: true, text: AppLocalizations.of(context)!.successfully);
      logIn();
      return true;
    }
    selectInputError();
    return false;
  }
  void logIn() {
    setState((){
      Navigator.pushReplacementNamed(context, '/main_screen_on_boarding');
    });
  }
  void selectInputError() {
   setState((){
     if (_emailTextEditingController.text.isEmpty &&
         _passwordTextEditingController.text.isEmpty) {
       SnackPareValidator(context: context, selected: false, text: AppLocalizations.of(context)!.empty_input);
       _emailError = AppLocalizations.of(context)!.email_is_empty;
      _passwordError = AppLocalizations.of(context)!.password_is_empty;

     }else{
       _emailTextEditingController.text.isEmpty?_emailError = AppLocalizations.of(context)!.email_is_empty:_emailError='';
       _passwordTextEditingController.text.isEmpty?_passwordError = AppLocalizations.of(context)!.password_is_empty:_passwordError='';
       _emailTextEditingController.text.isEmpty?SnackPareValidator(context: context, selected: false, text: _emailError):'';
       _passwordTextEditingController.text.isEmpty?SnackPareValidator(context: context, selected: false, text: _passwordError):'';
     }
   });
  }

}
