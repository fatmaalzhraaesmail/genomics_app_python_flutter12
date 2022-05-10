
import 'dart:convert';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:http/http.dart' as http;

class PractiseScreen extends StatefulWidget {
  @override
  _PractiseScreenState createState() => _PractiseScreenState();
}

class _PractiseScreenState extends State<PractiseScreen> {
  String size = "";
  String final_response = "";
  String result2 = "";

  final _formkey =
      GlobalKey<FormState>(); //key created to interact with the form

  //function to validate and save user form
  Future<void> _savingData() async {
    final validation = _formkey.currentState?.validate();
    if (!validation!) {
      return;
    }
    _formkey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    VoidCallback openFilePicker = () async {
      FilePickerResult? result;
      print("pick files");
      result = await FilePicker.platform.pickFiles(
          allowMultiple: true, withReadStream: true, withData: false);

      if (result != null) {
        print(result.files.first.name);

        //---Create http package multipart request object
        var request = http.MultipartRequest(
          "POST",
          Uri.parse("http://127.0.0.1:5000/uploads"),
        );

        List<PlatformFile>? files = result.files;

        if (files != null) {
          print("adding files selected with file picker");
          for (PlatformFile file in files) {
            //-----add selected file with request
            request.files.add(http.MultipartFile(
                "Your parameter name on server side",
                file.readStream!,
                file.size,
                filename: file.name));
          }
        }

        //-------Send request
        var resp = await request.send();

        //------Read response
        result2 = await resp.stream.bytesToString();

        //-------Your response
        print(result2);
      }
    };

    FlatButton selectAndSend = FlatButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0)),
        color: Color.fromRGBO(143, 172, 168, 1),
        onPressed: openFilePicker,
        child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 35),
          child: Text(
            "Selet and send",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
//                         color: Color(0xff839793),
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
//                   image:AssetImage('assets/images/f12.jpg',))) ,
                          image: AssetImage('assets/images/dnae.jpg'),
                        ))),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Form(
                        key: _formkey,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(143, 172, 168, 1),
                            border: InputBorder.none,
                            labelText: 'Enter size kemer: ',
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          onSaved: (value) {
                            size =
                                value!; //getting data from the user form and assigning it to name
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                          onPressed: () async {
                            //validating the form and saving it
                            _savingData();

                            //url to send the post request to
                            final url = 'http://127.0.0.1:5000/size';

                            //sending a post request to the url
                            final response = await http.post(Uri.parse(url),
                                body: json.encode({'size': size}));
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 18),
                            child: Text(
                              'SEND',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          color: Color.fromRGBO(143, 172, 168, 1),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectAndSend,
                    FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        color: Color.fromRGBO(143, 172, 168, 1),
                        onPressed: () async {
                          //url to send the get request to
                          final url = 'http://127.0.0.1:5000/size';

                          //getting data from the python server script and assigning it to response
                          final response = await http.get(Uri.parse(url));

                          //converting the fetched data from json to key value pair that can be displayed on the screen
                          final decoded = json.decode(response.body)
                              as Map<String, dynamic>;

                          //changing the UI be reassigning the fetched data to final response
                          setState(() {
                            final_response = decoded['size'];
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 18),
                          child: Text(
                            "Show Kmers Count",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'K-mer Count',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                 
                  color: Color.fromRGBO(
                      143, 172, 168, 1),
                height: 170,
                 
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(result2,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),)),
                ),


                

                

                // Text(final_response, style: TextStyle(fontSize: 24),)
                
              ],
            ),
          ),
        ))));
  }
}

// body: selectAndSend
