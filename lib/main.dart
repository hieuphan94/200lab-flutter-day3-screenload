import 'package:flutter/material.dart';
import 'package:screenload/MySharedPreferences.dart';
import './screen1.dart';
import './screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isFirstTimeOpen = true;

  _MyAppState() {
    MySharedPreferences.instance
        .getBooleanValue("firstTimeOpen")
        .then((value) => setState(() {
              isFirstTimeOpen = value;
            }));

    MySharedPreferences.instance.setBooleanValue("firstTimeOpen", false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: isFirstTimeOpen ? Screen1() : Screen2(),
    ));
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool isFirstTimeOpen = false;

//   _MyAppState(){
//     MySharedPreferences.instance.setBooleanValue("firstTimeOpen", true);

//     MySharedPreferences.instance
//         .getBooleanValue("firstTimeOpen")
//         .then((value) => setState(() {
//               isFirstTimeOpen = value;
//             }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: isFirstTimeOpen ? Screen1() : Screen2());
//   }
// }
