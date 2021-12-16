import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'record_page.dart';

class workouts_page1 extends StatefulWidget {
  const workouts_page1({Key key}) : super(key: key);

  @override
  _workouts_page1State createState() => _workouts_page1State();
}

class _workouts_page1State extends State<workouts_page1> {
  Container item(String text, String imPath) {
    return Container(
      //width: 300,
      height: 200,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey[100],
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imPath), fit: BoxFit.cover),
        color: Colors.indigo,
        //borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //spaceBetween if we want space only between
            children: [
              FlatButton(
                onPressed: () {},
                color: Colors.grey,
                child: Text('Workouts'),
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.grey,
                child: Text('Records'),
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.grey,
                child: Text('Correct'),
              ),
            ],
          ),
          item('Workout1', 'assets/images/image1.jpg'),
          SizedBox(
            width: 40,
          ),
          SingleChildScrollView(
            child: CartItem(
              key: UniqueKey(),
              exerciseName: 'Bench Press',
              reps_and_sets: 'N Reps: 10 | N Sets: 4',
              exerciseImage: 'image2',
            ),
          ),
          SizedBox(
            width: 40,
          ),
          SingleChildScrollView(
            child: CartItem(
              key: UniqueKey(),
              exerciseName: 'Incline Bench Press',
              reps_and_sets: 'N Reps: 10 | N Sets: 4',
              exerciseImage: 'image2',
            ),
          ),
          SizedBox(
            width: 40,
          ),
          SingleChildScrollView(
            child: CartItem(
              key: UniqueKey(),
              exerciseName: 'Dumbell Shoulder Press',
              reps_and_sets: 'N Reps: 10 | N Sets: 4',
              exerciseImage: 'image2',
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  String exerciseName;
  // ignore: non_constant_identifier_names
  String reps_and_sets;
  String exerciseImage;

  CartItem({
    Key key,
    this.exerciseName,
    // ignore: non_constant_identifier_names
    this.reps_and_sets,
    this.exerciseImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      height: 80,
      child: Card(
        color: Colors.grey[350],
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/$exerciseImage.jpg"),
                radius: 30,
              ),
              title: Text('$exerciseName'),
              subtitle: Text('$reps_and_sets'),
            ),
          ],
        ),
      ),
    );
  }
}
