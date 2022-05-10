import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seven/dnaIputtext.dart';
import 'data.dart';
import 'practiseDna.dart';

import 'DNA.dart';
import 'RNA.dart';

class MyHomePage extends StatefulWidget {
  List serviceList = service;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 98, 94, 1),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 98, 94, 1),
        leading: GestureDetector(
          child: Icon(Icons.menu),
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 5, top: 10),
              child: Stack(
                children: const [
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  Positioned(
                    right: 4,
                    top: 5,
                    child: CircleAvatar(
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                      maxRadius: 7,
                      backgroundColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      width: 46,
                      height: 50,
                      child: Image.asset(
                        'assets/images/person2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
//          color: Colors.grey[100],
          color: Colors.white,

          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[700]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SearchBox(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Services',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DNAScreen()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(66, 98, 94, 1),
                          blurRadius: 4.0,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/dna6.png',
                        width: 320,
                        height: 100,
                      ),
                      Text(
                        'Fastq File Analysis',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromRGBO(66, 98, 94, 1)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RNAScreen()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(66, 98, 94, 1),
                          blurRadius: 4.0,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/rna1.png',
                        width: 250,
                        height: 120,
                      ),
                      Text(
                        'RNA Analysis',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromRGBO(66, 98, 94, 1)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => danInputText()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(66, 98, 94, 1),
                          blurRadius: 4.0,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/dna3.png',
                        width: 250,
                        height: 120,
                      ),
                      Text(
                        'DNA Analysis',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromRGBO(66, 98, 94, 1)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SearchBox() {
    return Stack(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200,
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 60, top: 7),
            child: TextField(
              autofocus: false,
              cursorColor: Color.fromRGBO(66, 98, 94, 1),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '  Search for projects , Artcles',
                hintStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDesignLine(BuildContext context, services services) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PractiseScreen()));
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 15,
                  offset: Offset(2, 8),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('${services.image}'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      '${services.title}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
