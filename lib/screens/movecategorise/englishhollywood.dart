import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class EnglishHollywood extends StatelessWidget {
  final int index;
  EnglishHollywood(this.index);

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
              'id': englishhollywood[index].id,
              'title': englishhollywood[index].title,
              'imageurl': englishhollywood[index].imageurl,
              'imagescreen': englishhollywood[index].imagescreen,
              'imagescreen1': englishhollywood[index].imagescreen1,
              'imagescreen2': englishhollywood[index].imagescreen2,
              'description': englishhollywood[index].description,
              'movielink': englishhollywood[index].movielink,
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
                    image: NetworkImage(englishhollywood[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              englishhollywood[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
