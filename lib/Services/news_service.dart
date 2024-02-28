import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsServivce {
  final Dio dio;
  NewsServivce(this.dio);
  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=9d8da03549464223ae7e71ddd3222060&country=eg&category=general');

    Map<String, dynamic> JsonData = response.data;
    List<dynamic> articles = JsonData['articles'];
    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articleList.add(articleModel);
    }
    return articleList;
  }
}
