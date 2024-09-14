import '../models/news_model.dart';

abstract class NewsStates {}

class GetNewsInitialState extends NewsStates {}

class GetNewsSuccessState extends NewsStates {
  final List<NewsModel> newsModels;
  GetNewsSuccessState({required this.newsModels});
}

class GetNewsErrorState extends NewsStates {
  final String errorMsg;

  GetNewsErrorState({required this.errorMsg});
}

class GetNewsLoadingState extends NewsStates {}
