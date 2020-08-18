

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/downlod_screeen.dart';
import 'package:newapp/screens/Data/data.dart';

class SouthKoreanList extends StatelessWidget {
  final int index;
  SouthKoreanList(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            MovieDetailsScreen.routeName,
            arguments: {
              'id': southkorean[index].id,
              'title': southkorean[index].title,
              'imageurl': southkorean[index].imageurl,
              'imagescreen': southkorean[index].imagescreen,
              'imagescreen1': southkorean[index].imagescreen1,
              'imagescreen2': southkorean[index].imagescreen2,
              'description': southkorean[index].description,
              'movielink': southkorean[index].movielink,
            },
          );
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(southkorean[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              southkorean[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
} 