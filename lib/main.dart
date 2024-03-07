import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/news_service.dart';
import 'package:newsapp/screens/homeView.dart';

void main() {
  NewsServivce(Dio()).getNews();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
