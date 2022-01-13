import 'package:athletto/models/ExercicesBodyPart.dart';
import 'package:athletto/models/allExercices.dart';
import 'package:athletto/screens/home/home_page_modified.dart';
import 'package:athletto/screens/other/record_page.dart';
import 'package:athletto/screens/other/record_workout.dart';
import 'package:athletto/screens/other/workouts_page1.dart';
import 'package:flutter/material.dart';

class record_page_bodyPart extends StatefulWidget {
  const record_page_bodyPart({Key key, this.bodyPart}) : super(key: key);

  final String bodyPart;
  @override
  _record_page_bodyPartState createState() => _record_page_bodyPartState();
}

class _record_page_bodyPartState extends State<record_page_bodyPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => record_page()),
                    );
                  },
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
            SizedBox(
              width: 40,
            ),
            FutureBuilder<List<Exercice>>(
              future: fetchExerciceBodyPart(bodyPart: widget.bodyPart),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: height,
                    width: width,
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => record_workout(
                                            name: snapshot.data[index].name,
                                            image: snapshot.data[index].gifUrl,
                                          )),
                                );
                              },
                              child: workoutCard(snapshot.data[index].name,
                                  snapshot.data[index].gifUrl));
                        }),
                  );
                } else
                  return Center(child: CircularProgressIndicator());
              },
            ),
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
      ]),
    ),
  );
}
