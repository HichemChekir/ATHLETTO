import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spinbox/material.dart';

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
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bench Press'),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {},
                  shape: CircleBorder(side: BorderSide.none),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  shape: CircleBorder(side: BorderSide.none),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Set 1: '),
                SizedBox(
                  height: 51,
                  width: 150,
                  child: SpinBox(
                    min: 0,
                    max: 10,
                    value: 1,
                    onChanged: (value) => print(value),
                  ),
                ),
                SizedBox(
                  height: 51,
                  width: 150,
                  child: SpinBox(
                    min: 0,
                    max: 10,
                    value: 1,
                    onChanged: (value) => print(value),
                  ),
                ),
              ],
            ),
          ],
        ),
      
    );
  }
}
