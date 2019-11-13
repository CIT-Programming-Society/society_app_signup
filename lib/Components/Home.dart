import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
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

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconLogo(),
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              '${_counter.counter}',
              style: Theme.of(context).textTheme.subtitle,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () =>
              Provider.of<Counter>(context, listen: false).increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () =>
              Provider.of<Counter>(context, listen: false).decrement(),
            tooltip: 'Increment',
            child: Icon(Icons.remove),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}