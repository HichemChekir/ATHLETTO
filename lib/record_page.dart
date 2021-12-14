import 'package:athletto/workouts_page1.dart';
import 'package:flutter/material.dart';

class record_page extends StatefulWidget {
  const record_page({Key key}) : super(key: key);

  @override
  _record_pageState createState() => _record_pageState();
}

class _record_pageState extends State<record_page> {
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
      body: SingleChildScrollView(
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
                      MaterialPageRoute(builder: (context) => workouts_page1()),
                    );
                  },
                  color: Colors.grey,
                  child: Text('Workouts'),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => record_page()),
                    );
                  },
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
          ],
        ),
      ),
    );
  }
}
