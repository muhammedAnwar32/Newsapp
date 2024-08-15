import 'package:dio/dio.dart';
import 'package:newsapp/models/articles_model.dart';

class Newservices {
  final dio = Dio();
  Future<List<Articlesmodel>> getnews({required String catrgory}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=$catrgory&apiKey=87dc668806714f20a293f9d2611ae70c');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      //converting map to object
      List<Articlesmodel> articleslist = [];
      for (var article in articles) {
        Articlesmodel articlemodel = Articlesmodel.fromjson(article);
        articleslist.add(articlemodel);
      }
      return articleslist;
    } catch (e) {
      return [];
    }
  }
}
