import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:home/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final mycontroller = TextEditingController();
  final mycontroller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 190,),
              Container(
                  child: Stack(children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                  child: Text("Hello User",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                )
              ])),
              Container(
                  padding: EdgeInsets.only(top: 35, left: 20, right: 30),
                  child: Column(
                    children: <Widget>[
                      TextField(
                          controller: mycontroller,
                          decoration: InputDecoration(
                            labelText: 'EMAIL',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: mycontroller1,
                        decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      
          
                      InkWell(
                        onTap: () {
                          if (mycontroller.text == "user"&& mycontroller1.text=="user") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Homepage())));
                          }
                        },
                        child: Container(
                            height: 40,
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              shadowColor: Colors.greenAccent,
                              color: Colors.black,
                              elevation: 7,
                              child: GestureDetector(
                                  onTap: () async {},
                                  child: Center(
                                      child: Text('LOGIN',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins')))),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            child: Text('REGISTER',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontFamily: 'Montsterrat',
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline)),
                          )
                        ],
                      )
                    ],
                  ))
            ]),
      ),
    );
  }
}
