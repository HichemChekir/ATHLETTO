import 'package:athletto/workouts_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key key}) : super(key: key);

  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
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

    //TextEditingController nameController = TextEditingController();
    //TextEditingController passwordController = TextEditingController();
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
                    child: Stack(
                      children: <Widget>[
                        Positioned.fromRect(
                          rect: Rect.fromCenter(center: Offset(150, 45), width: 250, height: 60),
                          child: Container(
                            width: 50, 
                            height: 100, 
                            color: Colors.blue[100],
                            padding: EdgeInsets.all(10),
                            child: TextField(
                                  //controller: nameController,
                                  decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'User Name',
                                  ),
                                 ),
                              ),
                            ),

                          Positioned.fromRect(
                          rect: Rect.fromCenter(center: Offset(150, 115), width: 250, height: 60),
                          child: Container(
                            width: 50, 
                            height: 100, 
                            color: Colors.blue[100],
                            padding: EdgeInsets.all(10),
                            child: TextField(
                                  obscureText: true,
                                  //controller: passwordController,
                                  decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                  ),
                                 ),
                              ),
                            ),

                          
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 360,
              left: 120,
              child: Container(
                //lezem yemchi a droite akther
                height: 40,
                width: 250,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.black,
                  color: Colors.grey[350],
                  child: Text('Sign up'),
                  onPressed: () {},
                ),
              ),
            ),

            Positioned(
              top: 420,
              left: 200,
              child: RichText(
                text: TextSpan(
                    text: 'Or Sign in With ',
                    //style: DefaultTextStyle.of(context).style),
              ),
              ),
            ),

            Positioned(
                top: 450,
                left: 190,
                child: Material(
                  color: Colors.blue,
                  elevation: 8,
                  shape: CircleBorder(),
                  clipBehavior:Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {},
                    child: Ink.image(
                      image: AssetImage('assets/images/facebook_logo.png'),
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover, 
                    )
                  )
                ),
            ),


            Positioned(
                top: 450,
                left: 265,
                child: Material(
                  color: Colors.blue,
                  elevation: 8,
                  shape: CircleBorder(),
                  clipBehavior:Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {},
                    child: Ink.image(
                      image: AssetImage('assets/images/logo_google.png'),
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover, 
                    )
                  )
                ),
            ),    
          ],
        ),
      ),
    );
  }
}