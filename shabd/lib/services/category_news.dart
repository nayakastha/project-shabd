import 'dart:convert';

import 'package:shabd/services/api_key.dart';
import 'package:shabd/views/home/models/article_model.dart';
import 'package:http/http.dart' as http;

class NewsForCategorie {
  List<Article> news = [];

  Future<void> getNewsForCategory(String category) async {
    Uri url = Uri.parse(
        "http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=$apiKey");

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }
      });
    }
  }
}
