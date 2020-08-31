import 'package:flutter/material.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/downlod_screeen.dart';
import 'package:newapp/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeshboardScreen(),
      routes: {
        DetailsScreenColum.routeName: (ctx) => MovieDetailsScreen(),
      },
    );
  }
}