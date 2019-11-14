import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:society_app_signup/Components/Divider.dart';
import 'package:society_app_signup/Components/IconLogo.dart';
import 'package:society_app_signup/DataClasses/Counter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<Counter>(context);
    ScreenUtil.instance =
        ScreenUtil(width: 411, height: 731, allowFontScaling: true)
          ..init(context);
    ScreenUtil instance = ScreenUtil.getInstance();

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(instance.setWidth(40),
                  instance.setHeight(80) + ScreenUtil.statusBarHeight, 0, 0),
              child: IconLogo(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(instance.setWidth(40),
                  instance.setHeight(30), instance.setWidth(40), 0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Welcome to the Programming Society \nSign Up Prototype',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontSize: instance.setSp(28)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                  ),
                  Text(
                      'By signing up you are marking down attendence\nto our focus testing',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle
                          .copyWith(fontSize: instance.setSp(16))),
                  DoubleDivider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
