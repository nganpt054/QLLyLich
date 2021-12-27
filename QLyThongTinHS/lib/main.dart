import 'package:flutter/material.dart';
import 'classlopchitiet.dart';
import 'classpage.dart';
import 'package:flutter_bmi_calculator/models/classlop.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  ClassLop classLop;
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Quản lý thông tin lý lịch',
      initialRoute: '/',
      routes: {
        '/HSPage': (context) => HSPage(classLop: this.classLop,),
        '/ClasPage': (context) => ClassPage()
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Thông tin lý lịch'),
        ),
        body: SafeArea(
          child: ClassPage(),
        ),
      ),
    );
  }
}