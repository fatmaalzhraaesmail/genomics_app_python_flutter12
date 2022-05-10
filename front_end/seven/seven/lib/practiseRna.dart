
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'master.dart';
class PractiseRnaScreen extends StatefulWidget {


  @override
  _PractiseRnaScreenState createState() => _PractiseRnaScreenState();
}

class _PractiseRnaScreenState extends State<PractiseRnaScreen> {
  String sequences = '';
  int a = 0,
      c = 0,
      g = 0,
      u = 0,
      cu = 0,
      ag = 0;
  double A = 0;

//  double a=0;

  int?kmer;
  Map? kmers = {};
  TextEditingController sequencesController = TextEditingController(
  );
  TextEditingController kmerController = TextEditingController(
  );

  void basesPercentages() {
    List seq2 = sequences.split(
        '');

    for (int j = 0; j < sequences.length; j++) {
      if (seq2[j] == 'A') {
        setState(
                () {
              a++;
            });
      }
      else if (seq2[j] == 'U') {
        u++;
      }
      else if (seq2[j] == 'G') {
        g++;
      }
      else if (seq2[j] == 'C') {
        c++;
      }
    }
    for (int i = 0; i < sequences.length; i++) {
      if (seq2[i] == 'A' || seq2[i] == 'G') {
        ag++;
      }
      else if (seq2[i] == 'U' || seq2[i] == 'C') {
        cu++;
      }
    }
  }

  calculateKmers() {
    List seq2 = sequences.split(
        '');
//    var kmers={};
    for (int i = 0; i < sequences.length - kmer! + 1; i++) {
      String kmerr = '';
      for (int j = i; j < i + kmer!; j++) {
        kmerr += seq2[j];
      }
      if (kmers!.containsKey(
          kmerr)) {
        kmers![kmerr] += 1;
      }
      else {
        kmers![kmerr] = 1;
      }
      print(
          'hello');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
              15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          20),
//                         color: Color(0xff839793),
                      color: Colors.transparent,
                      image: DecorationImage(

                        fit: BoxFit.cover,
//                   image:AssetImage('assets/images/f12.jpg',))) ,
                        image: AssetImage(
                            'assets/images/r1.jpg'),))),
              SizedBox(
                height: 15,),
              Text(
                'RNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,),

              TextField(
                controller: sequencesController,
                onEditingComplete: () {
                  setState(
                          () {
                        if (sequencesController.text.isNotEmpty) {
                          sequences = sequencesController.text;
                        }
                        else {
                          sequences = 'ACGUCGUACAUCGACGU';
                        }
                        FocusScope.of(
                            context).unfocus(
                        );
                        calculateKmers(
                        );
                        basesPercentages(
                        );
                      });
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(
                      143, 172, 168, 1),
                  border: InputBorder.none,

                ),
              ),
              SizedBox(
                height: 15,),
              TextField(

                controller: kmerController,
                onEditingComplete: () {
                  setState(
                          () {
                        if (kmerController.text.isNotEmpty) {
                          kmer = int.parse(
                              kmerController.text);
                        }
                        else {
                          kmer = 4;
                        }
                        FocusScope.of(
                            context).unfocus(
                        );
                        calculateKmers(
                        );
                        basesPercentages(
                        );
                      });
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(
                      143, 172, 168, 1),
                  border: InputBorder.none,

                ),
              ),
              SizedBox(
                height: 15,),
              Text(
                'K-mer Count', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),),
              SizedBox(
                height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      5),
                  border: Border.all(

                  ),
                  color: Color.fromRGBO(
                      143, 172, 168, 1),
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(
                          10.0),
                      child: Text(
                        '${

                            kmers!

                        }', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(
                    8.0),
                child: LinearPercentIndicator(
                  width: 220.0,
                  lineHeight: 6,
                  percent:a/sequences.length,
                  animation: true,
                  barRadius: Radius.circular(
                      10),
                  animationDuration: 2000,
                  leading: Row(
                    children: [
                      Text(
                        ('A '), style: TextStyle(
                          color: Colors.redAccent,fontSize: 15,fontWeight: FontWeight.w900),),
                      Text('Percentages',)
                    ], ),
                  trailing: Text(
                    '${(a/sequences.length*100).toStringAsPrecision(3)} %',style: TextStyle(
                      color: Colors.redAccent,fontSize: 15,fontWeight: FontWeight.w900),),
                  progressColor: Colors.redAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                    8.0),
                child: LinearPercentIndicator(
                  width: 220.0,
                  lineHeight: 6,
                  percent:( u/sequences.length),
                  animation: true,
                  barRadius: Radius.circular(
                      10),
                  animationDuration: 2000,
                  leading: Row(
                    children: [
                      Text(
                        ('U '), style: TextStyle(
                          color: Colors.teal,fontSize: 15,fontWeight: FontWeight.w900),),
                      Text('Percentages')
                    ], ),
                  trailing: Text(
                    '${(u/sequences.length*100).toStringAsPrecision(3)} %',style: TextStyle(
                      color: Colors.teal,fontSize: 15,fontWeight: FontWeight.w900),),
                  progressColor: Colors.teal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                    8.0),
                child: LinearPercentIndicator(
                  width: 220.0,
                  lineHeight: 6,
                  percent: g/sequences.length,
                  animation: true,
                  barRadius: Radius.circular(
                      10),
                  animationDuration: 2000,
                  leading: Row(
                    children: [
                      Text(
                        ('G '), style: TextStyle(
                          color: Colors.amber,fontSize: 15,fontWeight: FontWeight.w900),),
                      Text('Percentages')
                    ], ),
                  trailing: Text(
                    '${(g/sequences.length*100).toStringAsPrecision(3)} %', style: TextStyle(
                      color: Colors.amber,fontSize: 15,fontWeight: FontWeight.w900),),
                  progressColor: Colors.amber,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                    8.0),
                child: LinearPercentIndicator(
                  width: 220.0,
                  lineHeight: 6,
                  percent: c/sequences.length,
                  animation: true,
                  barRadius: Radius.circular(
                      10),
                  animationDuration: 2000,
                  leading: Row(
                    children: [
                      Text(
                        ('C '), style: TextStyle(
                          color: Colors.lightBlue,fontSize: 15,fontWeight: FontWeight.w900),),
                      Text('Percentages')
                    ], ),
                  trailing: Text(
                    '${(c/sequences.length*100).toStringAsPrecision(3)} %', style: TextStyle(
                      color: Colors.lightBlue,fontSize: 15,fontWeight: FontWeight.w900),),
                  progressColor: Colors.lightBlue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                    8.0),
                child: LinearPercentIndicator(
                  width: 220.0,
                  lineHeight: 6,
                  percent: cu/sequences.length,
                  animation: true,
                  barRadius: Radius.circular(
                      10),
                  animationDuration: 2000,
                  leading: Row(
                    children: [
                      Text(
                        ('CU  '), style: TextStyle(
                          color: Colors.purple,fontSize: 15,fontWeight: FontWeight.w900),),
                      Text('Pyrimidine')
                    ], ),
                  trailing:  Text(
                    '${(cu/sequences.length*100).toStringAsPrecision(3)} %', style: TextStyle(
                      color: Colors.purple,fontSize: 15,fontWeight: FontWeight.w900),),
                  progressColor: Colors.purple,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                    8.0),
                child: LinearPercentIndicator(
                  width: 220.0,
                  lineHeight: 6,
                  percent:ag/sequences.length ,
                  animation: true,
                  barRadius: Radius.circular(
                      10),
                  animationDuration: 2000,
                  leading: Row(
                      children: [
                        Text(
                          ('GA  '), style: TextStyle(
                            color: Colors.brown,fontSize: 15,fontWeight: FontWeight.w900),),
                        Text('Purine       '),
                      ]),
                  trailing:  Text(
                    '${(ag/sequences.length*100).toStringAsPrecision(3)} %', style: TextStyle(
                      color: Colors.brown,fontSize: 15,fontWeight: FontWeight.w900),),
                  progressColor: Colors.brown,
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(
                    left: 80, bottom: 30, top: 20),
                child: RaisedButton(
                  color: Color.fromRGBO(
                      66, 98, 94, 1),
                  onPressed: () {
                    setState(
                            () {
                          kmers = {};
                          a=0;
                          g=0;
                          u=0;
                          c=0;
                          cu=0;
                          ag=0;
                        });
                  },
                  shape: RoundedRectangleBorder(

                    side: BorderSide(
                        color: Colors.grey.withOpacity(
                            0.5)),
                    borderRadius:
                    BorderRadius.all(
                        Radius.circular(
                            20)),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 73, vertical: 13),
                    child: Text(
                      'Reset', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                        letterSpacing: 1),),
                  ),
                ),
              ),

//
            ],
          ),
        ),
      ),
    );
  }
}
