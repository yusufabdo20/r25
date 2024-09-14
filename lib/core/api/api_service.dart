import 'package:dio/dio.dart';
import 'package:r25/models/news_model.dart';

import 'app_contants.dart';

class ApiService {
  final yusuf = Dio();

  Future<List<NewsModel>> getNews() async {
    final response = await yusuf.get(
        '$baseUrl/everything?q=tesla&from=2024-09-1&sortBy=publishedAt&apiKey=$apiKey');
    print(response);
    response.data; // Map <String , dynamic  >
    response.data['totalResults']; // 3411
    List articles = response
        .data['articles']; // List <Map<String , dynamic>> [{} , {} , {} ]
    ///-----------------------------------------------------------------//

    NewsModel singleNewsModel;
    List<NewsModel> newsModels = [];
    for (var item in articles) {
      singleNewsModel = NewsModel.fromJson(item);
      newsModels.add(singleNewsModel);
    }
    return newsModels;
  }
}
