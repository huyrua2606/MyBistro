import 'package:flutter/material.dart';
import 'file:///C:/Users/asus/AndroidStudioProjects/flutter_mybistro/lib/src/signin.dart';
void main (){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn()
    );
  }


}

