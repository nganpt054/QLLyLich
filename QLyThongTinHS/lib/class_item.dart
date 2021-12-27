import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/classlopchitiet.dart';
import 'package:flutter_bmi_calculator/models/classlop.dart';
class ClassItem extends StatelessWidget{
  ClassLop classlop;
  ClassItem({  this.classlop});
  @override
  Widget build(BuildContext context){
    Color _color=this.classlop.color;
    return InkWell(
      onTap: (){
        print('tapped to category: ${this.classlop.tenlop}');
        //Navigate to another page
        //Pages are stored into a Stack, the page you see is the top Page(in the stack)
       /* Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HSPage(classLop: this.classlop,)//you can send parameters using constructor

        ));*/


        //Are there another way to send parameters ? Yes !, Use RouteNames
        Navigator.pushNamed(context, '/HSPage', arguments: {'ClassLop': classlop});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Now change font's family from "Google Fonts"
            Text(this.classlop.tenlop,
                style: Theme.of(context).textTheme.title),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  _color.withOpacity(0.8),
                  _color
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            ),
            color:_color,
            borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}