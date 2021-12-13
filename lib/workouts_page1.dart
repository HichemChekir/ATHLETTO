import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

class workouts_page1 extends StatefulWidget {
  const workouts_page1({Key key}) : super(key: key);

  @override
  _workouts_page1State createState() => _workouts_page1State();
}

class _workouts_page1State extends State<workouts_page1> {
  Container item(String text, String imPath) {
    return Container(
      //width: 300,
      height: 200,
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
        //borderRadius: BorderRadius.all(Radius.circular(20)),
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //spaceBetween if we want space only between
            children: [
              FlatButton(
                onPressed: () {},
                color: Colors.grey,
                child: Text('Workouts'),
              ),
              FlatButton(
                onPressed: () {},
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

          item('Workout1', 'assets/images/image1.jpg'),

          SizedBox(
            width: 40,
          ),

          SingleChildScrollView(
            child: CartItem(
              key: UniqueKey(),
              exerciseName: '  Bench Press',
              reps_and_sets: 'N Reps: 10 | N Sets:4',
              exerciseImage: 'image2',
            ),
          ),

          // Container(
          //   height: 50,
          //   width: 450,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
          //     color: Colors.grey[350],
          //     ),
          //   margin: EdgeInsets.all(10.0),

          //   child: Column(
          //     children: [
          //       Text(
          //         '   Bench Press',
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 15.0,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  String exerciseName;
  // ignore: non_constant_identifier_names
  String reps_and_sets;
  String exerciseImage;

  CartItem({
    Key key,
    this.exerciseName,
    // ignore: non_constant_identifier_names
    this.reps_and_sets,
    this.exerciseImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      width: 480,
      height: 80,
      child: Card(
          color: Colors.grey[350],
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 2, right: 2, top: 5, bottom: 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                "$exerciseName",
                                // style: TextStyle(
                                //     fontSize: 18,
                                //     color: Color(0xFF000000),
                                //     fontWeight: FontWeight.w400),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(
                                "$reps_and_sets",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          
                          child: Align( 
                            alignment: Alignment(50,45),
                            child: Image.asset(
                            'assets/images/$exerciseImage.jpg',
                            height: 60,
                            width: 60,
                          ),),
                        ),

                        // SizedBox(
                        //   width: 40,
                        // ),
                        // Container(
                        //   alignment: Alignment.centerRight,
                        //   child: Image.asset(
                        //     "assets/images/ic_delete.png",
                        //     width: 25,
                        //     height: 25,
                        //   ),
                        // )
                        
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
