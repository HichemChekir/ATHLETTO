import 'package:flutter/material.dart';

class record_workout extends StatefulWidget {
  const record_workout({Key key}) : super(key: key);

  @override
  _record_workoutState createState() => _record_workoutState();
}

class _record_workoutState extends State<record_workout> {
  DateTime _dateTime;

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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: Column(
          children: [
            Text(_dateTime == null
                ? 'Nothing picked yet'
                : _dateTime.toString()),
            RaisedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2222))
                    .then((date) {
                  _dateTime = date;
                });
              },
              child: Text('Pick TIME'),
            )
          ],
        ));
  }
}
