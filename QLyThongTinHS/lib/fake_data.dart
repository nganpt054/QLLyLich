import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/models/HS.dart';
import 'package:flutter_bmi_calculator/models/classlop.dart';

const FAKE_CLASS= const[
  ClassLop(id: 1, tenlop: 'Lớp mầm',color: Colors.red),
  ClassLop(id: 2, tenlop: 'Lớp chồi',color: Colors.pink),
  ClassLop(id: 3, tenlop: 'Lớp lá',color: Colors.deepPurpleAccent),
];
var FAKE_HS =[
  HS(

      name: 'Nguyễn Văn A',
      urlImage: 'assets/images/anh1.jfif',
      ingredients: ['Ngày sinh:08/01/2016','Giới tính: Nam','Tên bố: Nguyễn Văn B',
       'Số điện thoại: 0328637445',
       'Tên mẹ: Lê Thị C',
       'Số điện thoại: 0325478912'],
      classId: 1),
  HS(

      name: 'Lê Thị A',
      urlImage: 'assets/images/anh2.jfif',
      ingredients: [ 'Ngày sinh:07/12/2016','Giới tính: Nữ','Tên bố: Lê Văn B',
       'Số điện thoại: 0329340437',
      'Tên mẹ:Lê Thị N',
       'Số điện thoại: 0325456442'],
      classId: 2),
  HS(

      name: 'Trần Thị C',
      urlImage: 'assets/images/anh3.jfif',
      ingredients: ['Ngày sinh:09/09/2016','Giới tính: Nữ','Tên bố: Trần Văn B',
      'Số điện thoại: 0325478234',
     'Tên mẹ: Trần Thị P',
       'Số điện thoại: 034711912'],
      classId: 1),
];