import 'package:flutter/material.dart';

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title,this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'User', icon: Icons.fastfood),
  Choice(title: 'Owner', icon: Icons.restaurant),
  Choice(title: 'YourAccount', icon: Icons.fastfood),
];// tabbar choice

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key key,this.choice }) :super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 150.0,
              color: textStyle.color,
            )
          ],
        ),
      ),
    );
  }
}
