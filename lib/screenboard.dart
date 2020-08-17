
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/bangla.dart';
import 'package:newapp/bollyword.dart';
import 'package:newapp/southkorean.dart';
import 'package:newapp/string.dart';

class DeshboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Text('MovieApp'),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'SOUTH KOREAN',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                      child: Text(
                        "See More",
                        style: TextStyle(
                            fontSize: 15, backgroundColor: Color(4294961664)),
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: southkorean.length,
                  itemBuilder: (ctx, i) => SouthKoreanList(i),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'BOLLyWOOD',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                      child: Text(
                        "See More",
                        style: TextStyle(
                            fontSize: 15, backgroundColor: Color(4294961664)),
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: southkorean.length,
                  itemBuilder: (ctx, i) => BollyWoodList(i),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'BANGLA',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                      child: Text(
                        "See More",
                        style: TextStyle(
                            fontSize: 15, backgroundColor: Color(4294961664)),
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: southkorean.length,
                  itemBuilder: (ctx, i) => BanglaMovie(i),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}