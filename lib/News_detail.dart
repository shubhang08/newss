import 'package:flutter/material.dart';
import './bookmark.dart';
class NewsDetail extends StatelessWidget {


  String title;
  String Content;
  String author;
  String image;
  NewsDetail({
    required this.title,
    required this.Content,
    required this.author,
    required this.image,
});
  final List<NewsDetail> news_Detail = [];
  void fav(){
    NewsDetail new_Detail=NewsDetail(title: title, Content: Content, author: author, image: image);
    news_Detail.add(new_Detail);

    // if(news_Detail.isEmpty==true){print("done");}
    // else{
    //   print("nDone");
    // }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.purpleAccent),
        actions: <Widget>[
      IconButton(onPressed: (){ fav();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>bookmark( )    ));
      } ,
      icon: Icon(
        Icons.bookmark_border_rounded,
        color: Colors.purpleAccent,
      ),
      ),
        ],
        title:
          Text('Newsssss',
        style: TextStyle(
          color: Colors.purpleAccent,
        )
        ),
        elevation: 5,

      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              Container(padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width*0.8 ,
                child: Text(title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(Content,
                style: TextStyle(
                  fontSize: 16,
                ),
                ),
              ),
              Container(
                child: Text('By ${author}'),
              ),
              Container(margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 5)
                ),
                child: FittedBox(child: Image.network(image), fit: BoxFit.fill ,),
              ),
              FloatingActionButton(onPressed: (){}, child: IconButton(onPressed: (){} ,icon: Icon(Icons.star)
              ),

                  ),


            ],
          ),

        ),
      ),
    );
  }
}
