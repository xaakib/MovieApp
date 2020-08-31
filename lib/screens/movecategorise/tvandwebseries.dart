import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class TvAndWebSeries extends StatelessWidget {
  final int index;
  TvAndWebSeries(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            DetailsScreenColum.routeName,
            arguments: {
              'id': tvandwebseries[index].id,
              'title': tvandwebseries[index].title,
              'imageurl': tvandwebseries[index].imageurl,
              'imagescreen': tvandwebseries[index].imagescreen,
              'imagescreen1': tvandwebseries[index].imagescreen1,
              'imagescreen2': tvandwebseries[index].imagescreen2,
              'description': tvandwebseries[index].description,
              'movielink': tvandwebseries[index].movielink,
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
                    image: NetworkImage(tvandwebseries[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              tvandwebseries[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
