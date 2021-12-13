
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

class workout_page extends StatefulWidget {
  const workout_page({Key key}) : super(key: key);

  @override
  _workout_pageState createState() => _workout_pageState();
}

class _workout_pageState extends State<workout_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(
          child: Text(
            'ATHLETTO',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[500],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Column(

          ),
        ],
      ),
    );
  }
}
