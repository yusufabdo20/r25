//https://newsapi.org/v2/everything?q=keyword&apiKey=084333ee941b4ab8980ce09fa483d13f
import 'package:dio/dio.dart';

const String baseUrl = "https://newsapi.org";
const String path = "v2";
const String apiKey = "084333ee941b4ab8980ce09fa483d13f";

class ApiService {
  Dio dioObject = Dio();
  getEvryThingNew() async {
    final response = await dioObject
        .get("$baseUrl/$path/everything?q=keyword&apiKey=$apiKey");
  }
}
