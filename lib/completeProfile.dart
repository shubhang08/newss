import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class Profile2 extends StatefulWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  _Profile2State createState() => _Profile2State();
}
enum Gender { Male, Female, other }
class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    Gender _gender = Gender.Male;
    return Scaffold(
      body: Container(
        child:Column(
          children:<Widget>[
            TextFormField(
              validator: ValidationBuilder().maxLength(15).build(),
              decoration: const InputDecoration(
                label: Text('First Name'),
                hintText: 'First Name',
                prefixIcon: Icon(Icons.account_circle),
              ),
            ),
            TextFormField(
              validator: ValidationBuilder().maxLength(15).build(),
              decoration: const InputDecoration(
                label: Text('Last Name'),
                hintText: 'Last Name',
                prefixIcon: Icon(Icons.account_circle),
              ),
            ),
            TextFormField(
              validator: ValidationBuilder().maxLength(15).build(),
              decoration: const InputDecoration(
                label: Text('Date of Birth'),
                hintText: 'DD_MM_YYYY',
                prefixIcon: Icon(Icons.account_circle),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Text('Gender'),
                  width: 100,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Radio(
                            value: Gender.Male,
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = Gender.Male;
                              });
                            },
                          ),
                          Container(
                            child: Text('Male'),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: Gender.Female,
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = Gender.Female;
                              });
                            },
                          ),
                          Container(
                            child: Text('Female'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]
        )
      ),


    );
  }
}








