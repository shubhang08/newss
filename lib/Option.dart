

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './homescreen.dart';
// import './cat.dart';
import 'package:google_fonts/google_fonts.dart';

class option extends StatefulWidget {
  const option({Key? key}) : super(key: key);
  static const routeName = '/option';

  @override
  _optionState createState() => _optionState();
}

class _optionState extends State<option> {
  bool _hasBeenPressed=false;
  bool _hasBeenPressed1=false;
  bool _hasBeenPressed2=false;
  bool _hasBeenPressed3=false;
  bool _hasBeenPressed4=false;
  bool _hasBeenPressed5=false;


  // List<category> cat=[
  //   category("1","sports"),
  //   category("2","entertainment"),
  //   category("3","science"),
  //   category("4","health"),
  //   category("5","technology"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.purpleAccent),
        title: const Text('News',
        style: const TextStyle(
          color: Colors.purpleAccent
        ),
        ),
          backgroundColor: Theme.of(context).backgroundColor
         ) ,
      body: SingleChildScrollView(

        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          const SizedBox(height: 10,),
            Container(
              child: const Text('Select your     Favourite        Category!!!!',
             style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
               color: Colors.black87
               ,
              ),
              ),
            ),
        /*GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 2,
           children: <Widget>[
             Container(
        padding: EdgeInsets.all(30),
        child: Text('Data',textAlign: TextAlign.center,),
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white38,
          boxShadow: [
            BoxShadow(
                color: Colors.black45, blurRadius: 6, offset: Offset(0, 2))
          ],
        ),
    ),



           ],
          // category.map(
          //       (catData) => Category(
          //     catData.id,
          //     catData.title,
          //   ),
          // ).toList(),
          // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //   maxCrossAxisExtent: 200,
          //   childAspectRatio: 3 / 2,
          //   crossAxisSpacing: 20,
          //   mainAxisSpacing: 20,
          // ),
        ),
*/



           const SizedBox(width: 30,
            height: 30,),
           Row(
              children: <Widget>[
                const SizedBox(width:30),
                //RaisedButton(onPressed: ()=> 'wd' , )
              GestureDetector(
                onTap:() {print("1");

                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                });
                },

                child: Container(
                  padding: const EdgeInsets.all(28),
                  child: const Text('Sports',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize:22
                    ),
                  ),
                  height: 90,
                  width: 150,

                  decoration: BoxDecoration(
                    color: _hasBeenPressed ? Colors.purpleAccent: Colors.white38,
                    boxShadow: [
                      const BoxShadow(
                          color: Colors.black45, blurRadius: 6, offset: const Offset(0, 2))
                    ],
                  ),
                )
              ),
                const SizedBox(width: 30,),
                GestureDetector(
                    onTap:() {print("2");

                    setState(() {
                      _hasBeenPressed1 = !_hasBeenPressed1;
                    });
                    },
                    child: Container(

                      child: Column(
                        children:<Widget>[ SizedBox(height: 25,),const Text('Entertainment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:20
                          ),
                        ),]
                      ),
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        color: _hasBeenPressed1 ? Colors.purpleAccent: Colors.white38,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black45, blurRadius: 6, offset: Offset(0, 2))
                        ],
                      ),
                    )
                ),

              ],
            ),
            const SizedBox(width: 30,height: 30,),
            Row(
              children: <Widget>[
                const SizedBox(width: 30,),
                GestureDetector(
                    onTap:() {print("3");

                    setState(() {
                      _hasBeenPressed2 = !_hasBeenPressed2;
                    });
                    },

                    child: Container(
                      child: Center(
                        child: const Text('Technology',
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                              color: Colors.white,
                              fontSize:22
                          ),
                        ),
                      ),
                      height: 90,
                      width: 150,

                      decoration: BoxDecoration(
                        color: _hasBeenPressed2 ? Colors.purpleAccent: Colors.white38,
                        boxShadow: const [
                           BoxShadow(
                              color: Colors.black45, blurRadius: 6, offset: const Offset(0, 2))
                        ],
                      ),
                    )
                ),
                const SizedBox(width: 30,),
                GestureDetector(
                    onTap:() {print("4");

                    setState(() {
                      _hasBeenPressed3 = !_hasBeenPressed3;
                    });
                    },

                    child: Container(
                      padding: const EdgeInsets.all(28),
                      child: const Text('Science',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize:22
                        ),
                      ),
                      height: 90,
                      width: 150,

                      decoration: BoxDecoration(
                        color: _hasBeenPressed3 ? Colors.purpleAccent: Colors.white38,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.black45, blurRadius: 6, offset: Offset(0, 2))
                        ],
                      ),
                    )
                ),
              ],
            ),
            const SizedBox(width: 30,height: 30,),
            Row(
              children: <Widget>[
                const SizedBox(width: 30,),
                GestureDetector(
                    onTap:() {print("5");

                    setState(() {
                      _hasBeenPressed4 = !_hasBeenPressed4;
                    });
                    },

                    child: Container(
                      padding: const EdgeInsets.all(28),
                      child: const Text('General',
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                            color: Colors.white,
                            fontSize:22
                        ),
                      ),
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        color: _hasBeenPressed4 ? Colors.purpleAccent: Colors.white38,
                        boxShadow: [
                           BoxShadow(
                              color: Colors.black45, blurRadius: 6, offset: const Offset(0, 2))
                        ],
                      ),
                    )
                ),
                const SizedBox(width: 30,),
                GestureDetector(
                    onTap:() {print("6");

                    setState(() {
                      _hasBeenPressed5 = !_hasBeenPressed5;
                    });
                    },

                    child: Container(
                      padding: const EdgeInsets.all(28),
                      child: const Text('Health',
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          color: Colors.white,
                              fontSize:22
                        ),
                      ),
                      height: 90,
                      width: 150,

                      decoration: BoxDecoration(
                        color: _hasBeenPressed5 ? Colors.purpleAccent: Colors.white38,
                        boxShadow:const [
                           BoxShadow(
                              color: Colors.black45, blurRadius: 6, offset: Offset(0, 2))
                        ],
                      ),
                    )
                ),
              ],
            ),
            const SizedBox(width: 30,height: 30,),
            Container(
              //decoration: BoxDecoration(
             // color: Colors.purpleAccent,
             // borderRadius: BorderRadius.circular(10),
             // border: Border.all(width: 0,
              //color: Colors.purpleAccent)
            //),
              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const homescreen()) );
              },
                padding:const EdgeInsets.all(12),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                  color: Colors.purpleAccent,
              child:Text('Finish', style: GoogleFonts.pacifico( textStyle:const TextStyle(color: Colors.white,

                fontSize: 18,
                fontWeight: FontWeight.normal,


              ),),)

              ),


            ),


          ],
        ),
      ),
    );
  }
}
