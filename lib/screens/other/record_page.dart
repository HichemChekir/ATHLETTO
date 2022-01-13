import 'package:athletto/models/ExercicesBodyPart.dart';
import 'package:athletto/models/allExercices.dart';
import 'package:athletto/screens/home/home_page_modified.dart';

import 'package:athletto/screens/other/record_page_bodypart.dart';
import 'package:athletto/screens/other/record_workout.dart';
import 'package:athletto/screens/other/workouts_page1.dart';
import 'package:flutter/material.dart';

class record_page extends StatefulWidget {
  const record_page({Key key}) : super(key: key);

  @override
  _record_pageState createState() => _record_pageState();
}

List<String> BP = [
  "back",
  "cardio",
  "chest",
  "lower arms",
  "lower legs",
  "neck",
  "shoulders",
  "upper arms",
  "upper legs",
 "waist"
];

class _record_pageState extends State<record_page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[600],
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => record_workout(name: 'Hi',image: 'assets/images/image2',)),
          );
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //spaceBetween if we want space only between
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home_screen()),
                      );
                    },
                    color: Colors.grey,
                    child: Text('Workouts'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.grey[700],
                    child: Text('Records'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.grey,
                    child: Text('Correct'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            // Add list of workouts
            Container(
              height: height,
              width: width,
              child: ListView.builder(
                padding: EdgeInsetsDirectional.all(10),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => record_page_bodyPart(bodyPart: BP[index])),
                            );
                          },
                          child: item(BP[index], 'assets/images/bodypart$index.jpg')),
                    SizedBox(
                      height: 10,
                    )
                    ],
                  );
                },
              ),
            )
            /*FutureBuilder<List<bodyPart>>(
              future: fetchBodyPart(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: height,
                    width: width,
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return workoutCard(snapshot.data[index].back);
                        }),
                  );
                } else
                  return Center(child: CircularProgressIndicator());
              },
            ),*/
          ],
        ),
      ),
    );
  }
}

Widget workoutCard(String name, String image) {
  return Container(
    child: Card(
      color: Colors.grey[600],
      child: Column(children: [
        Row(children: [
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(image),
              radius: 30,
            ),
            height: 60,
            width: 100,
          ),
          Flexible(child: Text(name)),
        ]),
        SizedBox(
          height: 20,
        )
      ]),
    ),
  );
}

Container item(String text, String imPath) {
  return Container(
    height: 200,
    width: 300,
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
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
}
