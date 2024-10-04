import 'package:flutter/material.dart';
import 'package:newsapp/component/news_tile.dart';
import 'package:newsapp/models/article_model.dart';

class NewsListView extends StatelessWidget {
  final List<ArticaleModel> articales;
  const NewsListView({
    super.key,
    required this.articales,
  });
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articales.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTile(
          articaleModel: articales[index],
        ),
      );
    }));
  }
}
