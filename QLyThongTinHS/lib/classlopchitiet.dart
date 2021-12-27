import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/chitieths.dart';
import 'package:flutter_bmi_calculator/fake_data.dart';
import 'package:flutter_bmi_calculator/models/HS.dart';
import 'package:flutter_bmi_calculator/models/classlop.dart';
class HSPage extends StatelessWidget {
  static const String routeName = '/HSPage';
  ClassLop classLop;

  HSPage({ this.classLop});

  @override
  Widget build(BuildContext context) {
    Map<String, ClassLop> arguments = ModalRoute.of(context).settings.arguments;
    this.classLop = arguments['ClassLop'];
    //Filter foods of from category
    List<HS> hocsinh = FAKE_HS.where((HS) => HS.classId== this.classLop.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin chi tiết${classLop.tenlop} '),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: hocsinh.length,
            itemBuilder: (context, index) {
              //We will continue in the next lesson
              HS hs = hocsinh[index];
              return InkWell(
                  onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => DetailHSPage(hs: hs)//send params using "constructor"
                    )
                );
              },
              child:  Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      clipBehavior: Clip.hardEdge,
                      child: Center(
                        child: FadeInImage.assetNetwork(
                            placeholder: 'assets/images/loading.gif',
                            image: hs.urlImage
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,right: 30,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Text('${hs.name}',
                        style: TextStyle(fontSize: 30, color: Colors.white),),
                    ),
                  ),
                ],
              ));
            }
        ),
      )
    );
  }
}