import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreenColum extends StatelessWidget {
  static const routeName = '/movie-details';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final imageurl = routeArgs['imageurl'];
    final imagescreen = routeArgs['imagescreen'];
    final imagescreen1 = routeArgs['imagescreen1'];
    final imagescreen2 = routeArgs['imagescreen2'];
    final movielink = routeArgs['movielink'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 10,
                child: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageurl),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              routeArgs['title'],
              style: TextStyle(
                backgroundColor: Colors.red,
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Container(
                child: Text(
                  'Discription',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  child: Text(
                    routeArgs['description'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Container(
                child: Text(
                  'Screenshots',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 600,
                width: 370,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        child: Image.network(
                          imagescreen,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(
                        imagescreen1,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(
                        imagescreen2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: IconButton(
                icon: Icon(
                  Icons.cloud_download,
                ),
                iconSize: 70,
                color: Colors.green,
                splashColor: Colors.pink,
                onPressed: () {
                  _launchURL(movielink);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

_launchURL(movielink) async {
  final url = movielink;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
