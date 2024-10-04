import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/component/loading_idicator.dart';
import 'package:newsapp/component/news_list_view.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_servics.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  dynamic futureRequest;

  @override
  void initState() {
    super.initState();
    futureRequest = NewsService(Dio()).getNews(category: widget.category);
  }

  // Future<void> getGeneralNews() async {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticaleModel>>(
        future: futureRequest,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articales: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
                child: Center(
                    child: Text(
              'Oops there was error ,Please try later',
              style: TextStyle(color: Colors.black, fontSize: 24),
            )));
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: LoadingIndicator(),
              ),
            );
          }
        });

    // dataLoading
    //     ? const SliverFillRemaining(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articales.isNotEmpty
    //         ? NewsListView(articales: articales)
    //         : const SliverFillRemaining(
    //             child: Center(
    //                 child: Text('Oops there was error ,Please try later')),
    //           );
  }
}
