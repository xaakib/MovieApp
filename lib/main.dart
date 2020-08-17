import 'package:flutter/material.dart';
import 'package:newapp/moviescreen.dart';
import 'package:newapp/screenboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeshboardScreen(),
      routes: {
        MovieDetailsScreen.routeName: (ctx) => MovieDetailsScreen(),
      },
    );
  }
}