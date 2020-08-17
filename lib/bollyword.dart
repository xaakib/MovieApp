import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/moviescreen.dart';
import 'package:newapp/string.dart';

class BollyWoodList extends StatelessWidget {
  final int index;
  BollyWoodList(this.index);

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
              'id': bollywood[index].id,
              'title': bollywood[index].title,
              'imageurl': bollywood[index].imageurl,
              'imagescreen': bollywood[index].imagescreen,
              'imagescreen1': bollywood[index].imagescreen1,
              'imagescreen2': bollywood[index].imagescreen2,
              'description': bollywood[index].description,
              'movielink': bollywood[index].movielink,
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
                    image: NetworkImage(bollywood[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bollywood[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}