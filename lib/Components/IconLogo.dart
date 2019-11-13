import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class IconLogo extends StatelessWidget {
  
  @override 
  Widget build(BuildContext context){
    final instance = ScreenUtil.getInstance();
    return Card(
      elevation: 5,
      color: Colors.grey.shade200,      
      shape: CircleBorder(
      ),
      child: Container(
        width: instance.setWidth(167),   
        padding: EdgeInsets.all(3),
        child: Image.asset('assets/officiallogo.png')
      ),
    );
  }
}