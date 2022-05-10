// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'Administrative.dart';
// import 'Classes.dart';
// import 'Majors.dart';

// class mainScreen extends StatefulWidget {
//   @override
//   _mainScreenState createState() => _mainScreenState();
// }

// class _mainScreenState extends State<mainScreen> {
//   List<String> _questions = [];
//   late String answer;

//   Future<List<String>> _loadQuestions() async {
//     List<String> questions = [];
//     await rootBundle.loadString('assets/ml.txt').then((q) {
//       for (String i in LineSplitter().convert(q)) {
//         questions.add(i);
//       }
//     });
//     return questions;
//   }

//   late Timer timer;
//   @override
//   void initState() {
//     _setup();

//     super.initState();
//     timer = Timer.periodic(Duration(seconds: 5), (Timer t) => navigate());
//   }

//   _setup() async {
//     // Retrieve the questions (Processed in the background)
//     List<String> questions = await _loadQuestions();

//     // Notify the UI and display the questions
//     setState(() {
//       _questions = questions;
//     });
//   }

//   void navigate() async {
//     answer = _questions[0];

//     print(answer);
//     setState(() {
//       if (answer == 'one') {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Majors()));
//         timer.cancel();
//       } else if (answer == 'two') {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Administrative()));
//       } else if (answer == 'three') {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Classes()));
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
