import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submissions/helper/helper.dart';
import 'package:flutter_submissions/screens/screens.dart';

class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  TextEditingController controller = TextEditingController();
  SharedPref pref = SharedPref();
  void showFlushbar(BuildContext context) {
    Flushbar(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(10),
      borderRadius: 8,
      flushbarPosition: FlushbarPosition.BOTTOM,
      backgroundColor: Colors.white,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      duration: Duration(seconds: 2),
      titleText: Text("Form tidak boleh kosong"),
      messageText: Text("Mohon isi form nama"),
    )..show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Nama",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "nama",
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(.8))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () async {
                if (controller.text.length != 0) {
                  pref.saveData(controller.text, true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardPage(),
                    ),
                  );
                } else {
                  showFlushbar(context);
                }
              },
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 120,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "Mulai",
                      style: TextStyle(color: Colors.white.withOpacity(.7)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
