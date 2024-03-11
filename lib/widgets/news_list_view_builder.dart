import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/news_service.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/news_list_View.dart';

class newslistviewbuilder extends StatefulWidget {
  const newslistviewbuilder({super.key});

  @override
  State<newslistviewbuilder> createState() => _newslistviewbuilderState();
}

class _newslistviewbuilderState extends State<newslistviewbuilder> {
  var future;
  @override
  void initstate() {
    super.initState();
    future = NewsServivce(Dio()).getTopHeadlines(category: 'general');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('Oops there was an error'),
            );
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
