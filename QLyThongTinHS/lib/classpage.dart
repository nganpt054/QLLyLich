import 'package:flutter/cupertino.dart';
import 'class_item.dart';
import 'fake_data.dart';
class ClassPage extends StatelessWidget{
    Widget build(BuildContext context){
      return GridView(
        padding: EdgeInsets.all(20),
        children: FAKE_CLASS.map((eachClass) => ClassItem(classlop:eachClass )).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ));
    }
}