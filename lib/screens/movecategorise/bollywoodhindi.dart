import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class BollywoodHindi extends StatelessWidget {
  final int index;
  BollywoodHindi(this.index);

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
              'id': bollywoodhindi[index].id,
              'title': bollywoodhindi[index].title,
              'imageurl': bollywoodhindi[index].imageurl,
              'imagescreen': bollywoodhindi[index].imagescreen,
              'imagescreen1': bollywoodhindi[index].imagescreen1,
              'imagescreen2': bollywoodhindi[index].imagescreen2,
              'description': bollywoodhindi[index].description,
              'movielink': bollywoodhindi[index].movielink,
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
                    image: NetworkImage(bollywoodhindi[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bollywoodhindi[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
