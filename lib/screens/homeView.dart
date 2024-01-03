import 'package:flutter/material.dart';
import 'package:newsapp/widgets/categorieslistview.dart';
import 'package:newsapp/widgets/news_list_View.dart';
import 'package:newsapp/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News ',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                ' Cloud',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CategoriesListView(),
              SizedBox(
                height: 32,
              ),
              Expanded(child: NewsListView())
            ],
          ),
        ));
  }
}
