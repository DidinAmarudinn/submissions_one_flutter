import 'package:flutter/material.dart';
import 'package:flutter_submissions/models/menu_models.dart';
import 'package:flutter_submissions/widgets/widgets.dart';

class MenuDetail extends StatelessWidget {
  final MenuModels menuModels;

  const MenuDetail({Key key, this.menuModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    menuModels.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Hero(
                    tag: "img-${menuModels.img}",
                    child: Image(
                      width: 100,
                      fit: BoxFit.cover,
                      height: 100,
                      image: AssetImage(
                        menuModels.img,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                menuModels.longDesk,
                style: TextStyle(
                    height: 1.5,
                    color: Colors.white.withOpacity(.8),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              ListMateriWidget(
                list: menuModels.list,
                color: menuModels.colors[1],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
