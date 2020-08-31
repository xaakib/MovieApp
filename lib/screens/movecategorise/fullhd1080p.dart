import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class FullHd1080p extends StatelessWidget {
  final int index;
  FullHd1080p(this.index);

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
              'id': fullhd[index].id,
              'title': fullhd[index].title,
              'imageurl': fullhd[index].imageurl,
              'imagescreen': fullhd[index].imagescreen,
              'imagescreen1': fullhd[index].imagescreen1,
              'imagescreen2': fullhd[index].imagescreen2,
              'description': fullhd[index].description,
              'movielink': fullhd[index].movielink,
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
                    image: NetworkImage(fullhd[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              fullhd[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}