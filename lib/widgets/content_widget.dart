import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_submissions/models/menu_models.dart';
import 'package:flutter_submissions/screens/menu_detail.dart';

class ContentWidget extends StatelessWidget {
  final List<MenuModels> listMenu;
  final Function showFlusbar;

  const ContentWidget({Key key, this.listMenu, this.showFlusbar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Daftar Materi",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: listMenu.length,
              itemBuilder: (context, index) {
                MenuModels content = listMenu[index];
                return GestureDetector(
                  onTap: () {
                    if (index == 3) {
                      showFlusbar();
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuDetail(
                            menuModels: content,
                          ),
                        ),
                      );
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: content.colors,
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Hero(
                              tag: "img-${content.img}",
                              child: Image.asset(content.img)),
                        ),
                        Flexible(
                          flex: 1,
                          child: Text(
                            content.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(1, index.isEven ? 1.2 : 1),
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
