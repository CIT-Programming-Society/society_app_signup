import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoubleDivider extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    final instance = ScreenUtil.getInstance();
    return Container(
      width: instance.setWidth(320),   
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: Colors.grey.shade100,
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(instance.setWidth(10),
            0, instance.setWidth(10), 0),
            child: Text("or",
              style: Theme.of(context)
                            .textTheme
                            .subtitle
                            .copyWith(fontSize: instance.setSp(16), fontWeight: FontWeight.bold)
            ),        
          ),
          Expanded(
            child: Divider(
              color: Colors.grey.shade300,
            )
          ),
        ]
      )
    ); 
  }
}