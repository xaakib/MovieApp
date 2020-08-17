import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailsScreen extends StatelessWidget {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Stack(
          children: <Widget>[
            Container(width: double.infinity, color: Colors.black),
            Text(
              routeArgs['title'],
              style: TextStyle(fontSize: 22.0, color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Discription',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                child: Text(
                  'Screenshots',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
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
              child: ProgressButton.icon(
                  iconedButtons: {
                    ButtonState.idle: IconedButton(
                        text: "Downlaod",
                        icon: Icon(Icons.cloud_download, color: Colors.white),
                        color: Colors.deepPurple.shade500),
                    ButtonState.loading: IconedButton(
                        text: "Loading", color: Colors.deepPurple.shade700),
                    ButtonState.fail: IconedButton(
                        text: "Failed",
                        icon: Icon(Icons.cancel, color: Colors.white),
                        color: Colors.red.shade300),
                    ButtonState.success: IconedButton(
                        text: "Success",
                        icon: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        color: Colors.green.shade400)
                  },
                  onPressed: () {
                    _launchURL(movielink);
                  },
                  state: ButtonState.idle),
            ),
          ],
        ),
      ),
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
