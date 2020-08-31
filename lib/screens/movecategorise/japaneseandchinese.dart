import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';
import 'package:newapp/screens/Data/data.dart';

class JapaneseAndChinese extends StatelessWidget {
  final int index;
  JapaneseAndChinese(this.index);

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
              'id': japaneseadnchinese[index].id,
              'title': japaneseadnchinese[index].title,
              'imageurl': japaneseadnchinese[index].imageurl,
              'imagescreen': japaneseadnchinese[index].imagescreen,
              'imagescreen1': japaneseadnchinese[index].imagescreen1,
              'imagescreen2': japaneseadnchinese[index].imagescreen2,
              'description': japaneseadnchinese[index].description,
              'movielink': japaneseadnchinese[index].movielink,
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
                    image: NetworkImage(japaneseadnchinese[index].imageurl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              japaneseadnchinese[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
