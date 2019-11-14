import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoubleDivider extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    final instance = ScreenUtil.getInstance();
    return Row(
      children: <Widget>[
        Expanded(
            child: Divider(
              color: Colors.grey.shade100,
            ),
            
        ),
        Padding(
                    padding: EdgeInsets.fromLTRB(0,
                  instance.setHeight(20), instance.setWidth(10), instance.setHeight(20)),
                  ),
        Text("OR",
          style: Theme.of(context)
                          .textTheme
                          .subtitle
                          .copyWith(fontSize: instance.setSp(16), fontWeight: FontWeight.bold)
        ),        
        Padding(
                    padding: EdgeInsets.fromLTRB(0,
                  instance.setHeight(20), instance.setWidth(10), instance.setHeight(20)),
                  ),
        Expanded(
            child: Divider(
              color: Colors.grey.shade100,
            )
        ),
      ]
    );
  }

}