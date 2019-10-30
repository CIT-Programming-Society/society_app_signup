import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconLogo(),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_counter.counter}',
              style: Theme.of(context).textTheme.display1,
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

class Counter with ChangeNotifier {
  int _counter;

  Counter(this._counter);
  get counter => this._counter;
  set counter(int counter) => this._counter = counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}

class IconLogo extends StatelessWidget {
  
  @override 
  Widget build(BuildContext context){
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      color: Colors.green,      // <== doesn't show up
      shape: CircleBorder(
        side: BorderSide(
          color: Colors.deepPurple,    // TODO : to change to the backgroung color of the app
          width: screenWidth / 50.0    // to tweak between this width and the border of the BoxDecoration
        )
      ),
      child: Container(
        // color: Colors.blue,        // <== CRASHES the app, the container can't have decoration and a color
        width: screenWidth / 2.5,     // 1/2.5 of screen width
        height: screenWidth / 2.5,    // <== required
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          border: Border.all(width: screenWidth/50.0),
          color: Colors.grey.shade200, 
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover, // optional in our case
            // the original image has to be modified in order to get a thiner border
            image: AssetImage('assets/officiallogo.png')
          )
        ),
      ),
    );
  }
}