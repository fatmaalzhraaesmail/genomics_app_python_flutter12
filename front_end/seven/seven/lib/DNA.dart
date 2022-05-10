import 'package:flutter/material.dart';
import 'practiseDna.dart';

import '/master.dart';

class DNAScreen extends StatefulWidget {
  @override
  State<DNAScreen> createState() => _DNAScreenState();
}

class _DNAScreenState extends State<DNAScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 98, 94, 1),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 98, 94, 1),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MasterScreen(),
                ));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Fastq DNA Analysis',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 6, top: 13, bottom: 13),
            width: 30,
            child: GestureDetector(
                child: Icon(Icons.more_vert_rounded,
                    color: Colors.white, size: 28)),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, top: 13, bottom: 13),
            width: 30,
            child: GestureDetector(
                child: Icon(
              Icons.open_in_new_rounded,
              color: Colors.white,
              size: 28,
            )),
          ),
        ],
      ),
      body: Container(
        child: PractiseScreen(),
      ),
    );
  }
}
