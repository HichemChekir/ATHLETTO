
import 'workouts_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  Container item(String text, String imPath) {
    return Container(
      width: 300,
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
        borderRadius: BorderRadius.all(Radius.circular(20)),
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
      body: SingleChildScrollView(
      child: Column(
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
      
       Column(
         children: [
           Container(
             height: 200.0,
             decoration: BoxDecoration(
               color: Colors.black12,
             ),
             child: Expanded(
               child: ListView(
                 padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(bottom: 8.0),
                     child: Text(
                       'Recommended',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 18.0,
                         letterSpacing: 1.0,
                       ),
                     ),
                   ),
                   CarouselSlider(
                     items: [
                       item('Workout1', 'assets/images/image1.jpg'),
                       item('Workout2', 'assets/images/image2.jpg'),
                       item('Workout3', 'assets/images/image3.jpg'),
                     ],
                     options: CarouselOptions(
                         height: 150.0,
                         enlargeCenterPage: true,
                         aspectRatio: 16 / 9,
                         autoPlay: false,
                         autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                         enableInfiniteScroll: false,
                         autoPlayAnimationDuration: Duration(milliseconds: 2000),
                         viewportFraction: 0.6),
                   ),
                 ],
               ),
             ),
           ),
 
           SizedBox(height: 20),

          Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Chest',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      item('Workout1', 'assets/images/image1.jpg'),
                      item('Workout2', 'assets/images/image2.jpg'),
                      item('Workout3', 'assets/images/image3.jpg'),
                    ],
                    options: CarouselOptions(
                        height: 150.0,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        enableInfiniteScroll: false,
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        viewportFraction: 0.6),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Arms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      item('Workout1', 'assets/images/image1.jpg'),
                      item('Workout2', 'assets/images/image2.jpg'),
                      item('Workout3', 'assets/images/image3.jpg'),
                    ],
                    options: CarouselOptions(
                        height: 150.0,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        enableInfiniteScroll: false,
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        viewportFraction: 0.6),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Legs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => workouts_page1()),
                            );
                          },
                          child: item('Workout1', 'assets/images/image1.jpg')),
                      item('Workout2', 'assets/images/image2.jpg'),
                      item('Workout3', 'assets/images/image3.jpg'),
                    ],
                    options: CarouselOptions(
                        height: 150.0,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        enableInfiniteScroll: false,
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        viewportFraction: 0.6),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
        ],
      ),
    ));
  }
}
