import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spinbox/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: const WorkoutForm(),
    );
  }
}

class WorkoutForm extends StatefulWidget {
  const WorkoutForm({Key key}) : super(key: key);

  @override
  _WorkoutFormState createState() => _WorkoutFormState();
}

class _WorkoutFormState extends State<WorkoutForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              width: 1080,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image5.jpg"))),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'Bench Press',
                  style: GoogleFonts.notoSans(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              child: Text(
                _dateTime == null ? 'Pick Date' : formatter.format(_dateTime),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Show(1);
                    },
                    shape: CircleBorder(side: BorderSide.none),
                    child: Text(
                      '+',
                      style: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: CircleBorder(side: BorderSide.none),
                    child: Text(
                      '-',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Weight',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Reps',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Show(1),
            ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ));
  }
}

class workoutSet {
  double weight;
  double reps;

  workoutSet(this.weight, this.reps);
}

Widget Show(int n) {
  double weight;
  double reps;
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(
      'Set $n: ',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    SizedBox(
      height: 51,
      width: 150,
      child: SpinBox(
        min: 0,
        max: 300,
        value: 1,
        onChanged: (value) => weight = value,
      ),
    ),
    SizedBox(
      width: 20,
    ),
    SizedBox(
      height: 51,
      width: 150,
      child: SpinBox(
        min: 0,
        max: 50,
        value: 1,
        onChanged: (value) => reps = value,
      ),
    ),
  ]);
}
