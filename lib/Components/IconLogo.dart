import 'package:flutter/material.dart';


class IconLogo extends StatelessWidget {
  
  @override 
  Widget build(BuildContext context){
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      color: Colors.grey.shade200,      
      shape: CircleBorder(
      ),
      child: Container(
        width: screenWidth / 2.5,     
        padding: EdgeInsets.all(3),
        child: Image.asset('assets/officiallogo.png')
      ),
    );
  }
}