import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class record_workout extends StatefulWidget {
  const record_workout({Key key}) : super(key: key);

  @override
  _record_workoutState createState() => _record_workoutState();
}

DateTime _dateTime;
DateFormat formatter = DateFormat('dd-MM-yyyy');

class _record_workoutState extends State<record_workout> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_dateTime == null
                ? 'Nothing has been picked yet'
                : formatter.format(_dateTime)),
            RaisedButton(
              child: Text('Pick a date'),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate:
                            _dateTime == null ? DateTime.now() : _dateTime,
                        firstDate: DateTime(1999),
                        lastDate: DateTime(2222))
                    .then(
                  (date) {
                    setState(
                      () {
                        _dateTime = date;
                      },
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
