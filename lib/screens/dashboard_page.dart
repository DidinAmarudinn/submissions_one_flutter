import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submissions/data/data.dart';
import 'package:flutter_submissions/helper/helper.dart';
import 'package:flutter_submissions/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String name = 'nama';
  MenuData menuData = MenuData();
  void getName() async {
    SharedPref sharedPref = SharedPref();
    await sharedPref.getName().then((value) => name = value);
    setState(() {});
    print(name);
  }

  void launchURL() async {
    const url = 'https://www.dicoding.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void showFlushbar(BuildContext context) {
    Flushbar(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(10),
      borderRadius: 8,
      flushbarPosition: FlushbarPosition.BOTTOM,
      backgroundColor: Colors.white,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      duration: Duration(seconds: 2),
      titleText: Text("Coming Soon"),
      messageText: Text("Dalam proses pembuatan"),
    )..show(context);
  }

  @override
  void initState() {
    getName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          HeaderWidget(
            nameUser: name,
            iconAvatar: 'images/boy.png',
          ),
          DicodingBanner(
            flatilustrasi: 'images/flatilustrasi.png',
            url: launchURL,
          ),
          Expanded(
            child: ContentWidget(
              listMenu: menuData.listMenu,
              showFlusbar: () {
                showFlushbar(context);
              },
            ),
          ),
        ],
      ),
    ));
  }
}
