import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  String japaneseGreeting;
  String englishGreeting;

  Greetings(
      {this.japaneseGreeting = '今何もない',
      this.englishGreeting = 'There isn\'t anything now'});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text(japaneseGreeting),
          Container(
            height: 1.5,
            color: Theme.of(context).accentColor,
          ),
          Text(englishGreeting),
        ],
      ),
    );
  }
}
