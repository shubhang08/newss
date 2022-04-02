import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './News_detail.dart';

import './article_model.dart';
import './news.dart';
import './article_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<ArticleModel> articles =  <ArticleModel>[];



  bool _loading =true;

  @override
  void initState(){
    super.initState();
     getNews();
     print("2");
  }

  Future<void> getNews() async{
    News newsClass=News();
    newsClass.getNews();
    articles =newsClass.news;
    print('3');
    setState(() {
      _loading =false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return _loading ? Center(
          child:  CircularProgressIndicator())
          :
      SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            child: Container(
              child: Column(
              children: <Widget>[

                Container(
                  // padding: EdgeInsets.all(10),
                  //   margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,

                  child: ListView.builder(itemBuilder: (context,index){
                    return
                    BlogTile(
                      imageurl: articles[index].urlToImage,
                      title: articles[index].title ,
                      desc: articles[index].description,
                      author: articles[index].author,
                  );
                    },
                    itemCount: articles.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(10),
                  ),
                ),
              ],
          ),
            )
      )

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
        ),
        child: GestureDetector(
          onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>NewsDetail(title: title,Content: desc,author: author,image: imageurl,) ));
          },
          child: Column(
              children: <Widget>[
                Image.network(imageurl),
                Text(title,
                  style:  TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 19
                ),
                ),
                Text(desc,
                  style:  TextStyle(

                    fontSize: 14,

                ),
                ),

              ],

          ),
        ),
      ),
    );
  }
}
