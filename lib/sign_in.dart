<<<<<<< HEAD
// import 'package:athletto/workout_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_login/flutter_login.dart';
=======
import 'package:athletto/workouts_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
>>>>>>> 8a69e89b207e426e79d098981eb61b4a4fa0d2f4



<<<<<<< HEAD
// class Sign_In extends StatefulWidget {
//   const Sign_In({Key key}) : super(key: key);

//   @override
//   _Sign_InState createState() => _Sign_InState();
// }

// class _Sign_InState extends State<Sign_In> {
//   Center item(String imPath) {
//     return Center(
//       child: Container(
//         width: 300,
//         height: 200,
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage(imPath), fit: BoxFit.cover),
//           color: Colors.indigo,
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(
//         backgroundColor: Colors.grey[900],
//         title: Center(
//           child: Text(
//             'ATHLETTO',
//             style: TextStyle(
//               fontSize: 20.0,
//               color: Colors.grey[500],
//             ),
//           ),
//         ),
//       ),
//       body: Column(

//       ),
//     );
//   }
// }
// const users = const {
//   'dribbble@gmail.com': '12345',
//   'hunter@gmail.com': 'hunter',
// };

// class LoginScreen extends StatelessWidget {
//   Duration get loginTime => Duration(milliseconds: 2250);

//   Future<String> _authUser(LoginData data) {
//     debugPrint('Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(data.name)) {
//         return 'User not exists';
//       }
//       if (users[data.name] != data.password) {
//         return 'Password does not match';
//       }
//       return null;
//     });
//   }

//   Future<String> _signupUser(LoginData data) {
//     debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) {
//       return null;
//     });
//   }

//   Future<String> _recoverPassword(String name) {
//     debugPrint('Name: $name');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(name)) {
//         return 'User not exists';
//       }
//       return null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogin(
//       title: 'ECORP',
      
//       onLogin: _authUser,
//       onSignup: _signupUser,
//       onSubmitAnimationCompleted: () {
//         Navigator.of(context).pushReplacement(MaterialPageRoute(
//           builder: (context) => workout_page(),
//         ));
//       },
//       onRecoverPassword: _recoverPassword,
//     );
//   }
// }



//           //Padding(
//       //   padding: EdgeInsets.all(10),
//       //   child: Column(
//       //     children: <Widget>[
//       //       Center(
//       //         child: Positioned(
//       //           top: 80,
//       //           left: 70,
//       //           child: Container(
//       //             height: 250,
//       //             width: 350,
//       //             color: Colors.grey[400],
//       //             padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//       //             child: Center(
//       //               child: Container(
//       //                 color: Colors.grey[200],
//       //                 height: 160,
//       //                 width: 300,
//       //               ),
//       //             ),
//       //             //Text: 'aa',
//       //           ),
//       //         ),
//       //       ),
//       //       Positioned(
//       //         top: 360,
//       //         left: 15,
//       //         child: Container(
//       //           //lezem yemchi a droite akther
//       //           height: 40,
//       //           width: 450,
//       //           padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//       //           child: RaisedButton(
//       //             textColor: Colors.white,
//       //             color: Colors.grey[350],
//       //             child: Text('Sign in with Google'),
//       //             onPressed: () {},
//       //           ),
//       //         ),
//       //       ),
//       //       Positioned(
//       //         top: 420,
//       //         left: 15,
//       //         child: Container(
//       //           //lezem yemchi a droite akther
//       //           height: 40,
//       //           width: 450,
//       //           padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//       //           child: RaisedButton(
//       //             textColor: Colors.white,
//       //             color: Colors.grey[350],
//       //             child: Text('Sign in with Apple'),
//       //             onPressed: () {},
//       //           ),
//       //         ),
//       //       ),
//       //       Positioned(
//       //         top: 500,
//       //         left: 15,
//       //         child: Container(
//       //           //lezem yemchi a droite akther
//       //           height: 40,
//       //           width: 450,
//       //           padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//       //           child: RaisedButton(
//       //             textColor: Colors.white,
//       //             color: Colors.grey[350],
//       //             child: Text('Sign in with Facebook'),
//       //             onPressed: () {},
//       //           ),
//       //         ),
//       //       ),
//       //     ],
//       //   ),
//       // ),
=======
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

            /*     Positioned(
              top: 120,
              left: 100,
              child: Container(
                //lezem yemchi a droite akther
                height: 30,
                width: 60,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.black,
                  color: Colors.grey[350],
                  child: Text('Sign in'),
                  onPressed: () {},
                ),
              ),                 
              ),   */
                //Text: 'aa',
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
                  child: Text('Sign in'),
                  onPressed: () {},
                ),
              ),
            ),

            Positioned(
              top: 420,
              left: 50,
              child: RichText(
                text: TextSpan(
                    text: 'Or Sign in With ',
                    //style: DefaultTextStyle.of(context).style),
              ),
              ),





            /* Positioned(
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
                  child: Text('Sign in with Google'),
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              top: 480,
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
            ), */


            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> 8a69e89b207e426e79d098981eb61b4a4fa0d2f4
