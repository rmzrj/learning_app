import 'package:flutter/material.dart';
import 'package:learning_app/Screens/HomeScreen.dart';
import 'package:learning_app/constants.dart';

void main() {
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

      debugShowCheckedModeBanner: false,
      title: 'Learning App',
      theme: ThemeData(
        primaryColor: bgYellow,
        scaffoldBackgroundColor: bgYellow,
        textTheme: Theme.of(context).textTheme.apply(displayColor: primaryText),

      ),


      home: HomeScreen(),
    );
  }
}


