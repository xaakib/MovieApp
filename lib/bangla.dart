import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/moviescreen.dart';
import 'package:newapp/string.dart';

class BanglaMovie extends StatelessWidget {
  final int index;
  BanglaMovie(this.index);

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
              'id': bangLa[index].id,
              'title': bangLa[index].title,
              'imageurl': bangLa[index].imageurl,
              'imagescreen': bangLa[index].imagescreen,
              'imagescreen1': bangLa[index].imagescreen1,
              'imagescreen2': bangLa[index].imagescreen2,
              'description': bangLa[index].description,
              'movielink': bangLa[index].movielink,
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
                    image: NetworkImage(bangLa[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bangLa[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}