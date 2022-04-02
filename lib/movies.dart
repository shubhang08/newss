import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
//import 'info.dart';

class HomePag extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white70),
            label: 'Home',
            backgroundColor: Colors.white70,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white70),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download, color: Colors.white70),
            label: 'Download',
          )
        ],
        //onTap: onTap,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(children: [
              Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Stack(
                      children: [
                        /*Expanded(
                          child: Container(
                              height: 500.0,
                              child: FittedBox(
                                  child: Image.asset(
                                    'image/movie 15.jpg',
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),*/
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const  Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "My List",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                           const SizedBox(
                              height: 8,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Row(
                                  // children: List.generate(trendingList.length,
                                  //     (index) {
                                  //   return Container(
                                  //     margin: EdgeInsets.only(right: 8),
                                  //     width: 110,
                                  //     height: 160,
                                  //     decoration: BoxDecoration(
                                  //         borderRadius:
                                  //             BorderRadius.circular(6),
                                  //         image: DecorationImage(
                                  //             image: AssetImage(
                                  //                 trendingList[index]['img']),
                                  //             fit: BoxFit.cover)
                                  //     ),
                                  //   );
                                  // }),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 20.0),
                                    child: Image.asset(
                                      'assets/l1.jpg',
                                      width: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'TV shows',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    'Movies',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    'My Favorites',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white70,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]))
            ])));
  }
}

/*


GridView.count(
crossAxisCount: orientation ==
Orientation.portrait
? 2
: 3,
crossAxisSpacing: 4.0,
mainAxisSpacing: 50.0,
children: List.generate(2, (index) {
return Image.asset(
'image/movie $index.jpg',
height: 200.0,
width: 200.0);
})),*/

/*
OrientationBuilder(
builder: (context, orientation) {
return Container(
child: SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: ListView(
shrinkWrap: true,
children: [
Expanded(
child: Container(
//height: 200,
width: 200,
child: Image.asset(
'image/movie 0.jpg'),
),
),
])));
},
),*/
/*
List.generate(trendingList.length, (index) {
return Container(
margin: EdgeInsets.only(left: 10.0),
// height: 110.0,
// width: 100.0,
child: FittedBox(
child: Image.asset(
trendingList[index]['img']),
fit: BoxFit.cover,
),
);
}),*/

/*SizedBox(height: 30.0),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: EdgeInsets.only(left: 10.0),
child: Text(
'Trend',
style: TextStyle(
color: Colors.redAccent,
fontSize: 20.0,
fontWeight: FontWeight.w800,
),
),
),
SizedBox(height: 20.0),*/
/*SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: GestureDetector(
                            onTap: () {},
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child:*/
/*
Row(children: [
ListView.builder(
scrollDirection: Axis.vertical,
shrinkWrap: true,
padding: const EdgeInsets.all(8),
itemCount: trendingList.length,
itemBuilder: (BuildContext context, int index) {
return Container(
child: Image.asset(
'movie ${trendingList[index]}'));
})
])
])*/
