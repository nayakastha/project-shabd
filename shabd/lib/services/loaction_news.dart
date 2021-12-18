import 'dart:convert';

import 'package:shabd/services/api_key.dart';
import 'package:shabd/views/home/models/article_model.dart';
import 'package:http/http.dart' as http;

class NewsForLocation {
  List<Article> news = [];

  Future<void> getNewsForLocation(String category) async {
    Uri url = Uri.parse(
        "http://newsapi.org/v2/top-headlines?country=in&q=$category&apiKey=$apiKey");

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            title: element['title'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: " ",
            articleUrl: element["url"],
          );
          news.add(article);
        }
      });
    }
  }
}
