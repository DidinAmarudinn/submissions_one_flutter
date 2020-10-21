import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String nameUser;
  final String iconAvatar;
  const HeaderWidget({Key key, this.nameUser, this.iconAvatar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Belajar",
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                nameUser,
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          CircleAvatar(
            radius: 25,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Image.asset(iconAvatar),
            ),
            backgroundColor: Colors.white,
          )
        ],
      ),
    );
  }
}
