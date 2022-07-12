import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../../../utiils/size_config.dart';
import '../../../widget/elevated_button_widget.dart';
import '../../../widget/snack_pare_validator.dart';
import '../../../widget/text_field_widget.dart';

class SentYourMobileScreen extends StatefulWidget {
  @override
  State<SentYourMobileScreen> createState() => _SentYourMobileState();
}

class _SentYourMobileState extends State<SentYourMobileScreen> {
  late TextEditingController _passwordTextEditingController1;
  late TextEditingController _passwordTextEditingController2;
  late TextEditingController _passwordTextEditingController3;
  late TextEditingController _passwordTextEditingController4;
  bool _onTapBool1 = false;
  String _emailError = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordTextEditingController1 = TextEditingController();
    _passwordTextEditingController2 = TextEditingController();
    _passwordTextEditingController3 = TextEditingController();
    _passwordTextEditingController4 = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _passwordTextEditingController1.dispose();
    _passwordTextEditingController2.dispose();
    _passwordTextEditingController3.dispose();
    _passwordTextEditingController4.dispose();
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
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(15)),
                    child: Text(
                      AppLocalizations.of(context)!.we_have_sent_an_Mobile,
                      style: TextStyle(
                        fontSize: SizeConfig.scaleTextFont(30),
                        color: Color(0xFF4A4B4D),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(12)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(10)),
                    child: Text(
                      AppLocalizations.of(context)!.contains_we_have_sent_an_Mobile,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.scaleTextFont(14),
                        color: Color(0xFF7C7D7E),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(60)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: SizeConfig.scaleHeight(56),
                        width: SizeConfig.scaleWidth(56),
                        child: TextField(
                          controller: _passwordTextEditingController1,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          onTap: () {
                            setState(() {
                              _onTapBool1 = true;
                            });
                          },
                          expands: true,
                          minLines: null,
                          maxLines: null,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: '',
                            label: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 19),
                              child: Text(
                                _onTapBool1 ? '' : '*',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 37,
                                  color: Color(0xFFB6B7B7),
                                ),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFFE1DEDE),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(56),
                        width: SizeConfig.scaleWidth(56),
                        child: TextField(
                          controller: _passwordTextEditingController2,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          expands: true,
                          minLines: null,
                          maxLines: null,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: '',
                            label: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 19),
                              child: Text(
                                _onTapBool1 ? '' : '*',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 37,
                                  color: Color(0xFFB6B7B7),
                                ),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFFE1DEDE),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(56),
                        width: SizeConfig.scaleWidth(56),
                        child: TextField(
                          controller: _passwordTextEditingController3,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          onTap: () {
                            setState(() {});
                          },
                          expands: true,
                          minLines: null,
                          maxLines: null,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: '',
                            label: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 19),
                              child: Text(
                                _onTapBool1 ? '' : '*',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 37,
                                  color: Color(0xFFB6B7B7),
                                ),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFFE1DEDE),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(56),
                        width: SizeConfig.scaleWidth(56),
                        child: TextField(
                          controller: _passwordTextEditingController4,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          expands: true,
                          minLines: null,
                          maxLines: null,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: '',
                            label: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 19),
                              child: Text(
                                _onTapBool1 ? '' : '*',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 37,
                                  color: Color(0xFFB6B7B7),
                                ),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFFE1DEDE),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(34)),
                  ElevatedButtonWidget(
                      text: AppLocalizations.of(context)!.next,
                      onPress: () {
                        setState(() {
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
    if (_passwordTextEditingController1.text.isNotEmpty &&
        _passwordTextEditingController2.text.isNotEmpty &&
        _passwordTextEditingController3.text.isNotEmpty &&
        _passwordTextEditingController4.text.isNotEmpty) {
      SnackPareValidator(
          context: context, selected: true, text: AppLocalizations.of(context)!.successfully);
      next();
      return true;
    }
    SnackPareValidator(
        context: context, selected: false, text: AppLocalizations.of(context)!.empty_password);
    return false;
  }

  void next() {
    setState(() {
      Navigator.pushReplacementNamed(context, '/new_password_screen');
    });
  }
}
