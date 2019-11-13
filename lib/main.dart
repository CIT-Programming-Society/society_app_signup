import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_app_signup/Components/Home.dart';
import 'package:society_app_signup/DataClasses/Counter.dart';
import 'package:society_app_signup/Styling/AppTheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      home: ChangeNotifierProvider<Counter>(
        builder: (_) => Counter(0),
        child: Consumer<Counter>(
          builder: (context, counter, _) {
            return MyHomePage(title: 'Flutter Demo Home Page');
          },
        ),
      ),
    );
  }
}