import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './News_detail.dart';
import './news.dart';

class bookmark extends StatefulWidget {
  const bookmark({Key? key}) : super(key: key);

  @override
  _bookmarkState createState() => _bookmarkState();
}

class _bookmarkState extends State<bookmark> {
  final List<NewsDetail> news_List=[];

  //List<NewsDetail> news_List = [];
//  var news_List=new List.from(news_Detail)..addAll(news_List);
 // news_List.addAll(news_Detail);

  // void add(){
  //   news_List= getnews_Detail();
  // }
  //
  // bool _loading =true;
  //
  // @override
  // void initState(){
  //   super.initState();
  //   getNews();
  //   print("2");
  // }
  //
  // Future<void> getNews() async{
  //
  //   newsClass.getNews();
  //   news_List =newsClass.news_Detail;
  //   print('3');
  //   setState(() {
  //     _loading =false;
  //   });

  // String imageurl;
  // String title;
  // String desc;
  // String author;
  // bookmark({required this.imageurl,required this.title,required this.desc,required this.author});

  @override
  Widget build(BuildContext context) {
   //  if(news_Detail.isEmpty==true){
   //    print('true');
   //
   // }
    //else{
      //print('false');
    // }
    //print(news_Detail[0].title);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(child:Text('i was here')),
            Container(
              // // padding: EdgeInsets.all(10),
              // //   margin: EdgeInsets.all(10),
              //   height: MediaQuery.of(context).size.height,
              //   width: MediaQuery.of(context).size.width,
              //   child: ListView.builder(itemBuilder: (context,index){
              //
              //     return
              //       BlogTile(
              //
              //         imageurl: news_Detail[index].image,
              //         title: news_Detail[index].title ,
              //         desc: news_Detail[index].Content,
              //         author: news_Detail[index].author,
              //       ); },
              //     itemCount: news_Detail.length,
              //     shrinkWrap: true,
              //     padding: EdgeInsets.all(10),
              //
              //   )
            ),
          ]
        ),
      ),
    );
  }
}
class BlogTile extends StatelessWidget{
  final String imageurl,title,desc,author;
  BlogTile({required this.imageurl,required this.title,required this.desc,required this.author});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2),
        )
        ,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>NewsDetail(title: title,Content: desc,author: author,image: imageurl,) ));
          },

          child: Column(

            children: <Widget>[
              Image.network(imageurl),
              Text(title,style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16
              ),),
              Text(desc,style: TextStyle(
                  fontSize: 14,
                  color: Colors.black26,
              ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
