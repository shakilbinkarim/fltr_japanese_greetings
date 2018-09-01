import 'package:flutter/material.dart';
import 'package:japanese_greetings/greetings_manager.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Japanese Greetings'),
        ),
        body: GreetingsManager(),
      ),
    );
  }
}
