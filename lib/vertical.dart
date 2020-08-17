import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/southkorean.dart';
import 'package:newapp/string.dart';

class VerticalView extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'SOUTH KOREAN',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                      child: Text(
                        "BACK",
                        style: TextStyle(
                            fontSize: 15, backgroundColor: Colors.orangeAccent),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
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
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
