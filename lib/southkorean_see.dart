import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/southkorean_list.dart';
import 'package:newapp/data.dart';

class SouthkoreanSee extends StatelessWidget {
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
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: southkorean.length,
        itemBuilder: (ctx, i) => SouthKoreanList(i),
      ),
    );
  }
}
