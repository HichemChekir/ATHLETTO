import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key key}) : super(key: key);

  @override
  _Sign_InState createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  Center item(String imPath) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imPath), fit: BoxFit.cover),
          color: Colors.indigo,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
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
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 80,
              left: 70,
              child: Container(
                height: 250,
                width: 350,
                color: Colors.grey[400],
                // padding: EdgeInsets.fromLTRB(10, 0, 10, 0)
                child: Center(
                  child: Container(
                    color: Colors.grey[200],
                    height: 160,
                    width: 300,
                  ),
                ),
                //Text: 'aa'
              ),
            ),
            Positioned(
              top: 360,
              left: 15,
              child: Container(
                //lezem yemchi a droite akther
                height: 40,
                width: 450,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey[350],
                  child: Text('Sign in with Google'),
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              top: 420,
              left: 15,
              child: Container(
                //lezem yemchi a droite akther
                height: 40,
                width: 450,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey[350],
                  child: Text('Sign in with Apple'),
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 15,
              child: Container(
                //lezem yemchi a droite akther
                height: 40,
                width: 450,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey[350],
                  child: Text('Sign in with Facebook'),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
