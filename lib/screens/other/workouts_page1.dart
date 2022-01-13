import 'package:athletto/models/WorkoutDict.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'record_page_bodypart.dart';

class workouts_page1 extends StatefulWidget {
  const workouts_page1({Key key, this.nameWorkout}) : super(key: key);
  final String nameWorkout;

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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget function() {
      return ListView.builder(
        itemCount: workout_routines[widget.nameWorkout].length,
        itemBuilder: (context, index) => workout_routines[widget.nameWorkout][index],
      );
    }

    Widget workout() {
      SingleChildScrollView page;
      return page = SingleChildScrollView(
        child: Column(
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
            item(widget.nameWorkout, 'assets/images/image1.jpg'),
            SizedBox(
              width: 40,
            ),
            Container(
                width: width,
                height: height,
                child: ListView.builder(
                  itemCount: workout_routines[widget.nameWorkout].length,
                  itemBuilder: (context, index) {
                    print(workout_routines[widget.nameWorkout][index]);
                    return workout_routines[widget.nameWorkout][index];
                  },
                )),
          ],
        ),
      );

      /*for (int i = 0; i < dict['Workout1'].length; i++){
        page.add(dict['Workout1'][i]);
      }*/
    }

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
        body: workout());
  }
}

/*SingleChildScrollView(
            child: dict[],
          ),
          SizedBox(
            width: 40,
          ),
          SingleChildScrollView(
            child: CartItem(
              key: UniqueKey(),
              exerciseName: 'Incline Bench Press',
              NumberReps: 5,
              NumberSets: 10,
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
              NumberReps: 5,
              NumberSets: 10,
              exerciseImage: 'image2',
            ),
          ),
*/

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  String exerciseName;
  // ignore: non_constant_identifier_names
  int NumberReps;
  int NumberSets;
  String exerciseImage;

  CartItem({
    Key key,
    this.exerciseName,
    // ignore: non_constant_identifier_names
    this.NumberReps,
    this.NumberSets,
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
              subtitle: Text('N Reps: $NumberReps | N Sets: $NumberSets'),
            ),
          ],
        ),
      ),
    );
  }
}
