import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'master.dart';
import 'sign.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _validateForm() {
    if (_formKey.currentState!.validate()) {
      print('login');
    } else
          () {
        return;
      };
  }

  Widget textField(
      {String hintText = '',
        bool secure = false,
        required FormFieldValidator validate}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: TextFormField(
        validator: validate,
        obscureText: secure,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          fillColor: Colors.white,
          //     ),
        ),
      ),
    );
  }

  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(66, 98, 94, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 38,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 250,
                color: Color.fromRGBO(66, 98, 94, 1),
                child: CircleAvatar(backgroundImage: AssetImage('assets/images/r2.jpg'),radius: 150,),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      textField(
                          hintText: 'User Name',
                          secure: false,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter the name correctly';
                            } else if (value.length < 5) {
                              return 'It must be at least 5 characters';
                            }
                          }),
                      textField(
                          hintText: 'Password',
                          secure: true,
                          validate: (value) {
                            if (value.toString().isEmpty) {
                              return 'Please enter the password correctly';
                            }
                          })
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (_) {
                      return MasterScreen();
                    }));
                  } else {
                    _validateForm();
                  }
                },
                child: Container(
                    width: 260,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 4.0)
                        ]),
                    child: Center(
                      child: Text(
                        'LogIn',
                        style: TextStyle(color: Color.fromRGBO(66, 98, 94, 1), fontSize: 25),
                      ),
                    )),
              ),
              SizedBox(
                height: 62,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(color: Colors.black, blurRadius: 4.0)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do You Have An Account ?',
                      style: TextStyle(color: Color.fromRGBO(66, 98, 94, 1), fontSize: 17),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(builder: (_) {
                            return Signup();
                          }));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}