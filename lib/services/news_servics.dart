import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticaleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=f5e031ebc1e74d9f8eebe32ce65a9fbc&category=$category');

      Map<String, dynamic> jasonData = response.data;
      List<dynamic> articales = jasonData["articles"];
      List<ArticaleModel> articalesList = [];
      //this is empty list to get the data that will return from the loop;

      for (var artical in articales) {
        ArticaleModel atricaleModel = ArticaleModel.fromJason(artical);

        articalesList.add(atricaleModel);
      }

      return articalesList;
    } catch (e) {
      return [];
    }
  }
}
