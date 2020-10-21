import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DicodingBanner extends StatelessWidget {
  final String flatilustrasi;
  final Function url;
  const DicodingBanner({Key key, this.flatilustrasi, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.blue[600],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Ayo Belajar Bahasa Pemerograman \ndi Dicoding",
                    style: const TextStyle(
                        height: 1.3,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      url();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Belajar Sekarang",
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              flatilustrasi,
              scale: 2,
            ),
          )
        ],
      ),
    );
  }
}
