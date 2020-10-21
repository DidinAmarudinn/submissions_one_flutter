import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  void saveData(String name, bool isLogin) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("name", name);
    await sharedPreferences.setBool("isLogin", isLogin);
    print(name);
    print(isLogin);
  }

  Future<String> getName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString("name") ?? "studiest";
  }

  Future<bool> getIsLogin() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool("isLogin") ?? false;
  }
}
