import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController{
  SharedPrefController._internal();
  final String _keyLogIn = 'logInTrue';
  static final SharedPrefController _instanc = SharedPrefController._internal();
  factory SharedPrefController(){
    return _instanc;
  }
  late SharedPreferences _sharedPreferences;
  Future<void> createSharedPref() async{
        _sharedPreferences =await SharedPreferences.getInstance();
  }
  // SharedPreferences get pref=>_sharedPreferences;
  Future<bool> changeLogIn(bool log) async{
    return await _sharedPreferences.setBool(_keyLogIn, log);
  }
  bool? get getIsLogIn => _sharedPreferences.getBool(_keyLogIn);
}
