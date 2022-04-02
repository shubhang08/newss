import 'dart:convert';

import './article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news= [];
  Future<void> getNews() async{ var url =Uri.parse("https://newsapi.org/v2/everything?domains=wsj.com&apiKey=8ca3f1d628fb42f398eca22eece1abea");
  var response =await http.get(url);
  var jsonData= jsonDecode(response.body);

  if(jsonData["status"]=="ok"){
    jsonData["articles"].forEach((element){
       if(element["urlToImage"] !=null && element["description"]!=null&&
           //element["url"]!=null &&
           element["content"]!=null && element["title"]!=null && element["author"]!=null ){
        print('10');

       ArticleModel articleModel=ArticleModel(
           author: element["author"],
            title: element["title"],
            description: element["description"],
           // url: element["url"],
            urlToImage: element["urlToImage"],
            //content: element["content"]
       );
      news.add(articleModel);
      }
      else{
        print('no');
      }
    }
    );

  }else{
    print('ohh nooo');
  }
  }
}
