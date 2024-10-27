import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animations"),
        ),
        body: ListView(
          children: [
            Card(
                child: ListTile(
                  title:Text("Captain America's Shield"),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return secondScreen();
                        },
                        barrierColor: Color.fromARGB(255, 2, 43, 77),
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder:
                            (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                          return /*RotationTransition(turns: animation, child: child,);*/
                          SlideTransition(
                            position:
                            Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                                .animate(animation),
                            child: child,
                          );
                        }));
                  },
                )
            ),
            Card(
              child: ListTile(
                title: Text("Iron Man"),
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, anotherAnimation) {
                        return thirdScreen();
                      },
                      barrierColor: Colors.red,
                      transitionDuration: Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, anotherAnimation, child) {
                        animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                        return /*RotationTransition(turns: animation, child: child,);*/
                        SlideTransition(
                          position:
                          Tween(begin: Offset(-0.5, 0.0), end: Offset(0.0, 0.0))
                              .animate(animation),
                          child: child,
                        );
                      }));
                },
              ),
            ),
            Card(
                child: ListTile(
                  title: Text("Doctor Strange"),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return fourthScreen();
                        },
                        barrierColor: Colors.green,
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder:
                            (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                          return /*RotationTransition(turns: animation, child: child,);*/
                          SlideTransition(
                            position:
                            Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                                .animate(animation),
                            child: child,
                          );
                        }));
                  },
                )
            ),
            Card(
                child: ListTile(
                  title: Text("Wanda"),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return fifthScreen();
                        },
                        barrierColor: Colors.redAccent,
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder:
                            (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                          return /*RotationTransition(turns: animation, child: child,);*/
                          SlideTransition(
                            position:
                            Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                                .animate(animation),
                            child: child,
                          );
                        }));
                  },
                )
            ),
            Card(
                child: ListTile(
                  title: Text("Animation 5"),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return LogoApp();
                        },
                        barrierColor: Colors.yellow,
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder:
                            (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.bounceIn, parent: animation);
                          return /*RotationTransition(turns: animation, child: child,);*/
                          SlideTransition(
                            position:
                            Tween(begin: Offset(1.0, 1.0), end: Offset(0.0, 0.0))
                                .animate(animation),
                            child: child,
                          );
                        }));
                  },
                )
            ),
            Card(
                child: ListTile(
                  title: Text("Flamethrower"),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return seventhScreen();
                        },
                        barrierColor: Colors.orange,
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder:
                            (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.elasticIn, parent: animation);
                          return /*RotationTransition(turns: animation, child: child,);*/
                          SlideTransition(
                            position:
                            Tween(begin: Offset(-1.0, -1.0), end: Offset(0.0, 0.0))
                                .animate(animation),
                            child: child,
                          );
                        }));
                  },
                )
            ),
            Card(
                child: ListTile(
                  title: Text("Hulk Transformation"),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return ImageAnimation();
                        },
                        barrierColor: Colors.green,
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder:
                            (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.bounceInOut, parent: animation);
                          return /*RotationTransition(turns: animation, child: child,);*/
                          SlideTransition(
                            position:
                            Tween(begin: Offset(1.0, -1.0), end: Offset(0.0, 0.0))
                                .animate(animation),
                            child: child,
                          );
                        }));
                  },
                )
            ),
            Card(
                child: ListTile(
                  title: Text("Iceman"),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return AnimatedContainerApp();
                        },
                        barrierColor: Color.fromARGB(255, 107, 196, 236),
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder:
                            (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.elasticInOut, parent: animation);
                          return /*RotationTransition(turns: animation, child: child,);*/
                          SlideTransition(
                            position:
                            Tween(begin: Offset(-1.0, 1.0), end: Offset(0.0, 0.0))
                                .animate(animation),
                            child: child,
                          );
                        }));
                  },
                )
            ),
          ],
          shrinkWrap: true,
        )
    );
  }
}

class secondScreen extends StatelessWidget {
  const secondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation 2')),
      body: Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:
                            Column(children: <Widget>[
                              const Padding(padding: EdgeInsets.all(50.0)),
                              Text('Click on violet to see her use her superpower to disappear')
                            ])
                        ), //Flexible
                        SizedBox(
                          width: 25,
                        ), //SizedBox
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: FadeIn(title: 'Violet disappear'),
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
        ), //Container
      ),
    );
  }
}

class thirdScreen extends StatelessWidget {
  const thirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spiderman')),
      body: Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:
                            Column(children: <Widget>[
                              const Padding(padding: EdgeInsets.all(50.0)),
                              Text('Click go to see spiderman stick to the wall and jump and click reverse for him to the the other direction')
                            ])
                        ), //Flexible
                        SizedBox(
                          width: 25,
                        ), //SizedBox
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Rotate(),
                          // Container(
                          //
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       color: Colors.red,
                          //     ) //BoxDecoration
                          // ), //Container
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
        ), //Container
      ),
    );
  }
}

class fourthScreen extends StatelessWidget {
  const fourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Doctor Strange')),
      body: Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:
                            Column(children: <Widget>[
                              const Padding(padding: EdgeInsets.all(50.0)),
                              Text('Use the go button to see Doctor Strange use a portal and disappear')
                            ])
                        ), //Flexible
                        SizedBox(
                          width: 25,
                        ), //SizedBox
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Fly(),
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
        ), //Container
      ),
    );
  }
}

class fifthScreen extends StatelessWidget {
  const fifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Five Animation')),
      body: Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:
                            Column(children: <Widget>[
                              const Padding(padding: EdgeInsets.all(50.0)),
                              OutlinedButton(
                                  child: const Text('Pauses animation'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                              OutlinedButton(
                                  child: const Text('Rewind animation'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ])
                        ), //Flexible
                        SizedBox(
                          width: 25,
                        ), //SizedBox
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: LogoApp(),
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
        ), //Container
      ),
    );
  }
}


class RouteSix extends StatelessWidget {
  const RouteSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sixth Animation')),
      body: Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:
                            Column(children: <Widget>[
                              const Padding(padding: EdgeInsets.all(50.0)),
                              OutlinedButton(
                                  child: const Text('Pauses animation'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                              OutlinedButton(
                                  child: const Text('Rewind animation'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ])
                        ), //Flexible
                        SizedBox(
                          width: 25,
                        ), //SizedBox
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: LogoApp(),
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
        ), //Container
      ),
    );
  }
}

class seventhScreen extends StatelessWidget {
  const seventhScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('In second route')),
      body: Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:
                            Column(children: <Widget>[
                              const Padding(padding: EdgeInsets.all(50.0)),
                              Text('Click on the water to see her Moana move it'),
                            ])
                        ), //Flexible
                        SizedBox(
                          width: 25,
                        ), //SizedBox
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: MyStatefulWidget(),
                          // Container(
                          //
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       color: Colors.red,
                          //     ) //BoxDecoration
                          // ), //Container
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
        ), //Container
      ),
    );
  }
}

// class RouteEight extends StatelessWidget {
//   const RouteEight({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('In second route')),
//       body: Center(
//         child: Container(
//             child: Padding(
//               padding: const EdgeInsets.all(14.0),
//               child: Column(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     fit: FlexFit.tight,
//                     child: Row(
//                       children: <Widget>[
//                         Flexible(
//                           flex: 1,
//                           fit: FlexFit.tight,
//                           child:
//                           Column(children: <Widget>[
//                             const Padding(padding: EdgeInsets.all(80.0)),
//                             OutlinedButton(
//                                 child: const Text('Pauses animation'),
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 }),
//                             OutlinedButton(
//                                 child: const Text('Rewind animation'),
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 }),
//                           ])
//                         ), //Flexible
//                         SizedBox(
//                           width: 20,
//                         ), //SizedBox
//                         Flexible(
//                           flex: 3,
//                           fit: FlexFit.tight,
//                             child: ImageAnimation(),
//                           // Container(
//                           //
//                           //     decoration: BoxDecoration(
//                           //       borderRadius: BorderRadius.circular(10),
//                           //       color: Colors.red,
//                           //     ) //BoxDecoration
//                           // ), //Container
//                         ) //Flexible
//                       ], //<Widget>[]
//                       mainAxisAlignment: MainAxisAlignment.center,
//                     ), //Row
//                   ), //Flexible
//                 ], //<Widget>[]
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//               ), //Column
//             ) //Padding
//         ), //Container
//       ),
//     );
//   }
// }

// class RouteNine extends StatelessWidget {
//   const RouteNine({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('In second route')),
//       body: Center(
//         child: Container(
//             child: Padding(
//               padding: const EdgeInsets.all(14.0),
//               child: Column(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     fit: FlexFit.tight,
//                     child: Row(
//                       children: <Widget>[
//                         Flexible(
//                             flex: 1,
//                             fit: FlexFit.tight,
//                             child:
//                             Column(children: <Widget>[
//                               const Padding(padding: EdgeInsets.all(80.0)),
//                               OutlinedButton(
//                                   child: const Text('Pauses animation'),
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   }),
//                               OutlinedButton(
//                                   child: const Text('Rewind animation'),
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   }),
//                             ])
//                         ), //Flexible
//                         SizedBox(
//                           width: 20,
//                         ), //SizedBox
//                         Flexible(
//                           flex: 3,
//                           fit: FlexFit.tight,
//                           child: AnimatedContainerApp(),
//                           // Container(
//                           //
//                           //     decoration: BoxDecoration(
//                           //       borderRadius: BorderRadius.circular(10),
//                           //       color: Colors.red,
//                           //     ) //BoxDecoration
//                           // ), //Container
//                         ) //Flexible
//                       ], //<Widget>[]
//                       mainAxisAlignment: MainAxisAlignment.center,
//                     ), //Row
//                   ), //Flexible
//                 ], //<Widget>[]
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//               ), //Column
//             ) //Padding
//         ), //Container
//       ),
//     );
//   }
// }



// import 'dart:math';


// void main() => runApp(const AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer Demo'),
        ),
         body:
         Center(
           child: Container(
               child: Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Column(
                   children: <Widget>[
                     new Container(
                       child: new Image.asset(
                         'assets/elsa.jpeg',
                         height: 50.0,
                         fit: BoxFit.cover,
                       ),
                     ),
                     Flexible(
                       flex: 1,
                       fit: FlexFit.tight,
                       child: Row(
                         children: <Widget>[
                           Flexible(
                               flex: 1,
                               fit: FlexFit.tight,
                               child:
                               Column(children: <Widget>[
                                 const Padding(padding: EdgeInsets.all(80.0)),
                                 Text('Click on the button to see Elsa make ice out of thin air'),
                                 OutlinedButton(
                                     child: const Text('Play animation'),
                                   onPressed: () {
                                     // Use setState to rebuild the widget with new values.
                                     setState(() {
                                       // Create a random number generator.
                                       final random = Random();

                                       // Generate a random width and height.
                                       _width = random.nextInt(200).toDouble();
                                       _height = random.nextInt(200).toDouble();

                                       // Generate a random color.
                                       _color = Colors.blue;
                                       //     Color.fromRGBO(
                                       //   random.nextInt(256),
                                       //   random.nextInt(256),
                                       //   random.nextInt(256),
                                       //   1,
                                       // );

                                       // Generate a random border radius.
                                       _borderRadius =
                                           BorderRadius.circular(random.nextInt(100).toDouble());
                                     });
                                   },),
                                 OutlinedButton(
                                     child: const Text('Rewind animation'),
                                     onPressed: () {
                                       Navigator.pop(context);
                                     }),
                               ])
                           ), //Flexible
                           SizedBox(
                             width: 20,
                           ), //SizedBox
                           Flexible(
                             flex: 3,
                             fit: FlexFit.tight,
                             child: AnimatedContainer(
                             // Use the properties stored in the State class.
                             width: _width,
                             height: _height,
                             decoration: BoxDecoration(
                               color: _color,
                               borderRadius: _borderRadius,


                             ),
                             // Define how long the animation should take.
                             duration: const Duration(seconds: 1),
                             // Provide an optional curve to make the animation feel smoother.
                             curve: Curves.fastOutSlowIn,
                           ),
                             // Container(
                             //
                             //     decoration: BoxDecoration(
                             //       borderRadius: BorderRadius.circular(10),
                             //       color: Colors.red,
                             //     ) //BoxDecoration
                             // ), //Container
                           ) //Flexible
                         ], //<Widget>[]
                         mainAxisAlignment: MainAxisAlignment.center,
                       ), //Row
                     ), //Flexible
                   ], //<Widget>[]
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                 ), //Column
               ) //Padding
           ), //Container
         ),
      ),
    );
  }
}

class ImageAnimation extends StatefulWidget {
  @override
  _ImageAnimationState createState() => _ImageAnimationState();
}

class _ImageAnimationState extends State<ImageAnimation> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Animation')),
      body: Center(
    child: GestureDetector(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:
                            Column(children: <Widget>[
                              const Padding(padding: EdgeInsets.all(80.0)),
                              Text('Click on the animation to see antman become giant man'),
                            ])
                        ), //Flexible
                        SizedBox(
                          width: 20,
                        ), //SizedBox
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            height: 500,
                            width: 600,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 100.0, // soften the shadow
                                )
                              ],
                            ),
                            child: Center(
                              child: AnimatedContainer(
                                height: isTapped ? 300.0 : 250.0,
                                width: isTapped ? 200 : 100.0,
                                duration: Duration(seconds: 2),
                                curve: Curves.fastOutSlowIn,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    scale: 1.0,
                                    image: AssetImage('assets/antman.webp'),
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
        ),
      ),//Container
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// void main() => runApp(const LogoApp());
//
class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    bool button1;
    bool button2;
    return Scaffold(
      // appBar: AppBar(title: const Text('Vision shooting lasers using his infinity stone')),
      body:

        Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: <Widget>[
                  new Container(
                    child: new Image.asset(
                      'assets/vision.webp',
                      height: 75.0,
                      width: 50,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:
                            Column(children: <Widget>[
                              const Padding(padding: EdgeInsets.all(80.0)),
                              // OutlinedButton(
                              //     child: const Text('Pauses animation'),
                              //     onPressed: () {
                              //       button1 = true;
                              //       button2 = false;
                              //     }),
                              // OutlinedButton(
                              //     child: const Text('Rewind animation'),
                              //     onPressed: () {
                              //       Navigator.pop(context);
                              //     }),
                              Text('Watch vision shoot lasers using his infinity stones')
                            ])
                        ), //Flexible
                        SizedBox(
                          width: 20,
                        ), //SizedBox
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          // child: LogoApp(),
                          child: Container(
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //     image: AssetImage(
                              //         'assets/vision.webp'),
                              //     fit: BoxFit.fill,
                              //   ),
                              //   shape: BoxShape.circle,
                              // ),
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: animation.value,
                            width: animation.value,
                            child: Icon(
                              Icons.flash_on,
                              color: Colors.yellow,
                              size: 55,
                            ),
                            // const FlutterLogo(),
                          ),
                          // Container(
                          //
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       color: Colors.red,
                          //     ) //BoxDecoration
                          // ), //Container
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
        ), //Container
      ),
    );
  }
}

class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  _LogoAppState createState() => _LogoAppState();
}

// #docregion print-state
class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
    // #enddocregion print-state
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
    // #docregion print-state
      ..addStatusListener((status) => print('$status'));
    controller.forward();
  }
  // #enddocregion print-state

  @override
  Widget build(BuildContext context) => AnimatedLogo(animation: animation);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
// #docregion print-state
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 350,
      child: Stack(
        children: <Widget>[
          Container(
            height: 250.0,
            width: 250.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/moana2.jpeg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
          AnimatedPositioned(
            width: selected ? 150.0 : 50.0,
            height: selected ? 10.0 : 125.0,
            top: selected ? 100.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 150.0 : 50.0,
            height: selected ? 10.0 : 125.0,
            top: selected ? 100.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 150.0 : 50.0,
            height: selected ? 10.0 : 125.0,
            top: selected ? 100.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 20.0 : 50.0,
            height: selected ? 10.0 : 125.0,
            top: selected ? 50.0 : 200.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 125.0 : 50.0,
            height: selected ? 10.0 : 125.0,
            top: selected ? 100.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 10.0 : 50.0,
            height: selected ? 10.0 : 125.0,
            top: selected ? 25.0 : 200.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 150.0 : 50.0,
            height: selected ? 50.0 : 125.0,
            top: selected ? 75.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 150.0 : 50.0,
            height: selected ? 10.0 : 125.0,
            top: selected ? 100.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 50.0 : 50.0,
            height: selected ? 150.0 : 10.0,
            top: selected ? 50.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 100.0 : 50.0,
            height: selected ? 10.0 : 10.0,
            top: selected ? 50.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                // color: Colors.blue,
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 50 : 50,
            height: selected ? 10.0 : 10.0,
            top: selected ? 100 : 5,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
                 child:
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FadeIn extends StatefulWidget {
  const FadeIn({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _FadeInState createState() => _FadeInState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _FadeInState extends State<FadeIn> {
  // Whether the green box should be visible
  bool _visible = true;
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      child: GestureDetector(
      onTap: () {
      setState(() {
      isTapped = !isTapped;
      _visible = !_visible;
      });
      },
        child: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 400),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
            width: 250.0,
            height: 300.0,

              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  scale: 1.0,
                  image: AssetImage('assets/violet.webp'),
                  // fit: BoxFit.cover,
                ),
              )
          ),
        ),
      ),
    ));
  }
}

class Rotate extends StatefulWidget {
  @override
  _RotateState createState() => _RotateState();
}

class _RotateState extends State<Rotate>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Spider man"),
      // ),
      body: Center(
        child: Column(
          children: <Widget>[
            RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
              child:
              new Container(
                child: new Image.asset(
                  'assets/spider.webp',
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
              // Icon(Icons.stars),
            ),
            ElevatedButton(
              child: Text("go"),
              onPressed: () => _controller.forward(),
            ),
            ElevatedButton(
              child: Text("reverse"),
              onPressed: () => _controller.reverse(),
            ),
          ],
        ),
      ),
    );
  }
}

class Fly extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FlyState();
}

class FlyState extends State<Fly> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offset;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 1.0))
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: ElevatedButton(
              child: Text('Go'),
              onPressed: () {
                switch (controller.status) {
                  case AnimationStatus.completed:
                    controller.reverse();
                    break;
                  case AnimationStatus.dismissed:
                    controller.forward();
                    break;
                  default:
                }
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: offset,
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: new Container(
                  child: new Image.asset(
                    'assets/strange.jpeg',
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


