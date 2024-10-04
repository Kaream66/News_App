// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/component/news_tile.dart';
// import 'package:newsapp/models/article_model.dart';
// import 'package:newsapp/services/news_servics.dart';

// class NewListView extends StatefulWidget {
//   const NewListView({
//     super.key,
//   });

//   @override
//   State<NewListView> createState() => _NewListViewState();
// }

// class _NewListViewState extends State<NewListView> {
//   List<ArticaleModel> articales = [];
//   bool dataLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articales = await NewsService(Dio()).getNews();
//     dataLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return dataLoading
//         ? const SliverFillRemaining(
//             child: Center(
//                 child: CircularProgressIndicator(
//             color: Colors.blue,
//           )))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articales.length,
//                 (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 22),
//               child: NewsTile(
//                 articaleModel: articales[index],
//               ),
//             );
//           }));
//   }
// }
