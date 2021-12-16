import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
            item('assets/images/image1.jpg'),
            Positioned(
              top: 380,
              child: Container(
                height: 50,
                width: 475,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue[200],
                  child: Text('CREATE ACCOUNT'),
                  onPressed: () {
                    //Color: colors.
                  },
                ),
              ),
            ),
            Positioned(
              top: 440,
              child: Container(
                height: 50,
                width: 475,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue[200],
                  child: Text('LOG IN'),
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
