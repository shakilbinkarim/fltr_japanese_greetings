import 'package:flutter/material.dart';
import 'package:japanese_greetings/greetings.dart';

class GreetingsManager extends StatefulWidget {
  @override
  _GreetingsManagerState createState() => _GreetingsManagerState();
}

class _GreetingsManagerState extends State<GreetingsManager> {
  List<Greeting> GreetingsList = [
    new Greeting(
        japaneseGreeting: 'おはようございます。', englishGreeting: 'Good Morning!'),
    new Greeting(
        japaneseGreeting: 'こんにちは。', englishGreeting: 'Good Afternoon!'),
    new Greeting(japaneseGreeting: 'こんばんは。', englishGreeting: 'Good Evening!'),
  ];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Greetings(
            japaneseGreeting: GreetingsList[counter].japaneseGreeting,
            englishGreeting: GreetingsList[counter].englishGreeting,
          ),
          Container(
            height: 10.0,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                counter = (counter + 1) % GreetingsList.length;
              });
            },
            color: Theme.of(context).primaryColor,
            child: Text('Show Another Japanese Greeting'),
          )
        ],
      ),
    );
  }
}

class Greeting {
  String japaneseGreeting;
  String englishGreeting;

  Greeting({this.japaneseGreeting, this.englishGreeting});
}
