//import 'package:bio/seq.dart' as seq;
import 'package:flutter/material.dart';
import 'package:seven/splashScreen.dart';
import 'flask.dart';

import 'master.dart';
import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MasterScreen(),
       home: SplashScreen(),
    );
  }
}
