import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/screens/details_screen_colum.dart';

class MovieDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.blueGrey,
            title: Text(
              'Movie Details',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: true,
            floating: true,
            actions: [],
          ),
          SliverToBoxAdapter(
            child: DetailsScreenColum(),
          ),
        ],
      ),
    );
  }
}
