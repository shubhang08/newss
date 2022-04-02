import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/Option.dart';
import './login.dart';

import './theme.dart';

import 'package:provider/provider.dart';


class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);


  @override
  _profileState createState() => _profileState();
}

enum Gender { Male, Female, Other }

class _profileState extends State<profile> {

  bool _isSelected = true;

  void toggleSwitch(bool value) {
    if (_isSelected == false) {
      setState(() {
       // AdaptiveTheme.of(context).toggleThemeMode();
       //  theme.setDarkMode();

        _isSelected = true;

      });
    } else {
      //theme.setLightMode();
      setState(() {
        //AdaptiveTheme.of(context).toggleThemeMode();
        _isSelected = false;
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    var first, last, dob, gend, ema;
    final user = FirebaseAuth.instance.currentUser;

    final useded = FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((use) {
      final Gender = use.get('Gender');
      first = use.get('First Name');
      last = use.get('Last Name');
      dob = use.get('DOB');
      gend = use.get('Gender');
      ema = use.get('Email');

      print(Gender);
      print(first);
    });
    return StreamBuilder<Object>(
        stream: FirebaseFirestore.instance
            .collection('user')
            .doc(user.uid)
            .snapshots(),
        builder: (context, snapshot) {
          //   final data= snapshot.data;
          // print(data);
          return  Consumer<ThemeNotifier>(
              builder: (context, theme, _) => SingleChildScrollView(
              child: Container(
            height: (MediaQuery.of(context).size.height),
            width: (MediaQuery.of(context).size.width),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    '${ema}',
                    // check this and correct
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '${first} ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Form(
                    // key: key,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                child: Text('First Name',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor
                                  ),
                                ),
                                width: 100,
                              ),
                              SizedBox(
                                width: 280,
                                child: TextFormField(
                                  // initialValue: '${first}',
                                  readOnly: true,
                                  textInputAction: TextInputAction.done,
                                  decoration:
                                      InputDecoration(hintText: '${first}'

                                          //  label: Text('${first}'),

                                          ),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                child: Text('Last Name',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                                ),
                                width: 100,
                              ),
                              SizedBox(
                                width: 280,
                                child: TextFormField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                      //   label: Text('${last}'),
                                      hintText: '${last}'),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                child: Text('Date',  style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                                ),
                                width: 100,
                              ),
                              SizedBox(
                                width: 280,
                                child: TextFormField(
                                  readOnly: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      //    label: Text('${dob}'),
                                      hintText: '${dob}'),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: Row(children: <Widget>[
                            Container(
                              child: Text('Gender',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.71,
                              child: TextFormField(
                                readOnly: true,
                                //keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    // label: Text('${gend}'),
                                    hintText: '${gend}'),
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Column(
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: <Widget>[
                              //     Row(
                              //       children: <Widget>[
                              //         Radio(
                              //           value: Gender.Male,
                              //           groupValue: _gender,
                              //           onChanged: (value) {
                              //             setState(() {
                              //               _gender = Gender.Male;
                              //             });
                              //           },
                              //         ),
                              //         Container(
                              //           child: Text('Male'),
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       children: <Widget>[
                              //         Radio(
                              //           value: Gender.Female,
                              //           groupValue: _gender,
                              //           onChanged: (value) {
                              //             setState(() {
                              //               _gender = Gender.Female;
                              //             });
                              //           },
                              //         ),
                              //         Container(
                              //           child: Text('Female'),
                              //         ),
                              //       ],
                              //     )
                              //   ],
                              // ),
                            ),
                          ])),
                          SizedBox(
                            height: 10,
                          ),
                        ]),
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black45,
                  indent: 5,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Icon(Icons.language,
                          color: Colors.purple),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Text('Language',  style: TextStyle(
                          color: Theme.of(context).primaryColor),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: <Widget>[

                    GestureDetector(
                      onTap: () {

                        setState(() {
                          theme.setLightMode();

                        });

                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [

                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.09,
                            child: Icon(Icons.wb_sunny,
                            color: Colors.purple,
                            )
                            ,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.19,
                            child: Text('Light Mode' ,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).primaryColor
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.15,
                    ),
                    GestureDetector(
                      onTap: () {

                        setState(() {
                          theme.setDarkMode();

                        });

                      },
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.1,
                            child: Icon(Icons.nightlight_round,
                            color: Colors.purple),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.3,
                            child: Text('Dark Mode' ,
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor
                            ),
                            ),
                          )
                        ],
                      ),
                    )

                    // Transform.scale(
                    //     scale: 1,
                    //     child: Switch(
                    //       onChanged: toggleSwitch,
                    //       value: _isSelected,
                    //       activeColor: Colors.purple,
                    //       activeTrackColor: Colors.purpleAccent,
                    //       inactiveThumbColor: Colors.white24,
                    //       inactiveTrackColor: Colors.black38,
                    //     )),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black38,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      child:  Icon(Icons.category,
                          color: Colors.purple),
                    ),


                    Container(height: MediaQuery.of(context).size.height*0.03,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => option()));
                        },
                        child: Text('Your Topic',  style: TextStyle(
                            color: Theme.of(context).primaryColor),),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(thickness: 2, color: Colors.black38),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.logout,
                    color: Theme.of(context).errorColor,),
                    Container(width: MediaQuery.of(context).size.width*0.2,
                        child: FlatButton(
                      child: Text('Logout',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Theme.of(context).errorColor),),
                      onPressed: () {

                        FirebaseAuth.instance.signOut();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));

                      },
                    )),
                  ],
                )
              ],
            ),
            padding: EdgeInsets.all(5),
          )
              )
              );
        }
        );
  }
}
