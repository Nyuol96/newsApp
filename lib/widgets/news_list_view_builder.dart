import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/news_service.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/news_list_View.dart';

class newslistviewbuilder extends StatefulWidget {
  newslistviewbuilder({
    super.key,
  });

  @override
  State<newslistviewbuilder> createState() => _newslistviewbuilderState();
}

class _newslistviewbuilderState extends State<newslistviewbuilder> {
  List<ArticleModel> articles = [];
  @override
  bool isLoading = true;
  void initState() {
    super.initState();
    generalNews();
  }

  Future<void> generalNews() async {
    articles = await NewsServivce(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : NewsListView(
            articles: articles,
          );
  }
}
