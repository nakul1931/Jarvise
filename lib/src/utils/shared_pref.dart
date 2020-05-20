import 'package:shared_preferences/shared_preferences.dart';

class StoreData {
  static void setData(bool isLogin) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("isLogin", isLogin);
  }

  static Future<bool> checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool status = prefs.getBool("isLogin");
    // print("==========================$status=====================");
    if (status == null || status == false) {
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }
}
