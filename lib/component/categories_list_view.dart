import 'package:flutter/material.dart';
import 'package:newsapp/component/category_card.dart';
import 'package:newsapp/models/categories_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Business', image: 'assets/bussiness.jpeg'),
    CategoryModel(
        categoryName: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.avif'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.avif'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.jpeg'),
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'General', image: 'assets/general.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) {
            return CategoryCard(
              category: categories[index],
            );
          })),
    );
  }
}
