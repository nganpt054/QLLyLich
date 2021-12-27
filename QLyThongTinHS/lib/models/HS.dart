import 'dart:math';

import 'package:flutter/cupertino.dart';

class HS {
  int id;
  String name;
  String urlImage;
//time to finish this food
  //one foods has many ingredients
  List<String> ingredients = List<String>();
  //reference: 1 Category has many Foods
  int classId;
  //constructor:
  HS({
    @required this.name,
    @required this.urlImage,
    this.ingredients,
     this.classId
  }) {
    //id is "auto-increment"
    this.id = Random().nextInt(1000);
  }
}

