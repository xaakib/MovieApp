import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/bangla_list.dart';
import 'package:newapp/screens/Data/data.dart';

class BanglaSee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
            children: <TextSpan>[
              TextSpan(text: 'SEE ', style: TextStyle(color: Colors.blue)),
              TextSpan(text: 'MORE ', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: bangLa.length,
          itemBuilder: (ctx, i) => BanglaMovie(i),
        ),
      ),
    );
  }
}
