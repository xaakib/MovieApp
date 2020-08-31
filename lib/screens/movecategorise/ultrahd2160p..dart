

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class UltraHD2160p extends StatelessWidget {
  final int index;
  UltraHD2160p(this.index);

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
              'id': ultrahd2160p[index].id,
              'title': ultrahd2160p[index].title,
              'imageurl': ultrahd2160p[index].imageurl,
              'imagescreen': ultrahd2160p[index].imagescreen,
              'imagescreen1': ultrahd2160p[index].imagescreen1,
              'imagescreen2': ultrahd2160p[index].imagescreen2,
              'description': ultrahd2160p[index].description,
              'movielink': ultrahd2160p[index].movielink,
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
                    image: NetworkImage(ultrahd2160p[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ultrahd2160p[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
} 