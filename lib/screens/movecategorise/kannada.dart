import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class Kannada extends StatelessWidget {
  final int index;
  Kannada(this.index);

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
              'id': kannda[index].id,
              'title': kannda[index].title,
              'imageurl': kannda[index].imageurl,
              'imagescreen': kannda[index].imagescreen,
              'imagescreen1': kannda[index].imagescreen1,
              'imagescreen2': kannda[index].imagescreen2,
              'description': kannda[index].description,
              'movielink': kannda[index].movielink,
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
                    image: NetworkImage(kannda[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              kannda[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
