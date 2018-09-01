import 'package:flutter/material.dart';
import 'package:japanese_greetings/greetings.dart';

class GreetingsManager extends StatefulWidget {
  @override
  _GreetingsManagerState createState() => _GreetingsManagerState();
}

class _GreetingsManagerState extends State<GreetingsManager> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(children: <Widget>[
        Greetings(),
        Container(
          height: 3.0,
        ),
        RaisedButton(
          onPressed: () {},
          color: Theme.of(context).primaryColor,
          child: Text('Show a Japanese Greeting'),
        )
      ],),
    );
  }
}
