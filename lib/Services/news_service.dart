import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsServivce {
  final Dio dio;
  NewsServivce(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=eg&apiKey=9d8da03549464223ae7e71ddd3222060&category=$category');

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
    } catch (e) {
      return [];
    }
  }
}
