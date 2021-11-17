import 'package:flunx/flunx_theme.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const Flunx());
}

class Flunx extends StatelessWidget {
  const Flunx({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Flunx',
      theme: FlunxTheme.dark(),
      // theme: theme.copyWith(
      //   colorScheme: theme.colorScheme.copyWith(
      //     primary: Colors.deepOrangeAccent,
      //     secondary: Colors.black
      //   )
      // ),
      home: const Home(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final theme = FlunxTheme.dark();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: theme.textTheme.bodyText1
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
