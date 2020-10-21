import 'package:flutter/material.dart';
import 'package:flutter_submissions/helper/helper.dart';
import 'package:flutter_submissions/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPref sharedPref = SharedPref();

  bool login = false;

  void getIsLogin() async {
    await sharedPref.getIsLogin().then((value) {
      setState(() {
        login = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getIsLogin();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tutorial Microsoft Office",
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(3, 9, 23, 1),
      ),
      home: login == false ? SplashScreens() : DashboardPage(),
    );
  }
}
