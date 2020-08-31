import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class Spanish extends StatelessWidget {
  final int index;
  Spanish(this.index);

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
              'id': spanish[index].id,
              'title': spanish[index].title,
              'imageurl': spanish[index].imageurl,
              'imagescreen': spanish[index].imagescreen,
              'imagescreen1': spanish[index].imagescreen1,
              'imagescreen2': spanish[index].imagescreen2,
              'description': spanish[index].description,
              'movielink': spanish[index].movielink,
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
                    image: NetworkImage(spanish[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              spanish[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
