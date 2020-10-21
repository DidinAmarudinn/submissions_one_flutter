import 'package:flutter/material.dart';
import 'package:flutter_submissions/models/models.dart';

class MenuModels {
  String name;
  String img;
  String desk;
  String longDesk;
  int id;
  List<DataModels> list;
  List<Color> colors;

  MenuModels(
      {this.name,
      this.img,
      this.desk,
      this.colors,
      this.id,
      this.longDesk,
      this.list});
}
