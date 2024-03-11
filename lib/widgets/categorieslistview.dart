import 'package:flutter/material.dart';
import 'package:newsapp/models/categorymodel.dart';
import 'package:newsapp/widgets/CategoryCard.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'Assets/IMG_9640.JPG', CategoryName: 'Business'),
    CategoryModel(image: 'Assets/IMG_6102.jpg', CategoryName: 'Entertainment'),
    CategoryModel(image: 'Assets/IMG_5754.jpg', CategoryName: 'Health'),
    CategoryModel(image: 'Assets/IMG_5395.JPG', CategoryName: 'Science'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
