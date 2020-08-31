import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class HindiDubbed extends StatelessWidget {
  final int index;
  HindiDubbed(this.index);

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
              'id': hindidubbed[index].id,
              'title': hindidubbed[index].title,
              'imageurl': hindidubbed[index].imageurl,
              'imagescreen': hindidubbed[index].imagescreen,
              'imagescreen1': hindidubbed[index].imagescreen1,
              'imagescreen2': hindidubbed[index].imagescreen2,
              'description': hindidubbed[index].description,
              'movielink': hindidubbed[index].movielink,
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
                    image: NetworkImage(hindidubbed[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              hindidubbed[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
