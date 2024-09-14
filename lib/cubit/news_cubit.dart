import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r25/core/api/api_service.dart';
import 'package:r25/models/news_model.dart';

import 'news_states.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(GetNewsInitialState());
  List<NewsModel> news = [];
  getNews() async {
    try {
      emit(GetNewsLoadingState());
      news = await ApiService().getNews();
      emit(GetNewsSuccessState(newsModels: news));
      return news;
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          emit(GetNewsErrorState(errorMsg: "connectionTimeout"));
          break;
        case DioExceptionType.badResponse:
          emit(GetNewsErrorState(errorMsg: e.toString()));
          break;
        case DioExceptionType.badCertificate:
          emit(GetNewsErrorState(errorMsg: "Bad Certificate"));
          break;
        case DioExceptionType.sendTimeout:
          emit(GetNewsErrorState(errorMsg: "sendTimeout"));
          break;
        case DioExceptionType.receiveTimeout:
          emit(GetNewsErrorState(errorMsg: "receiveTimeout"));
          break;
        case DioExceptionType.cancel:
          emit(GetNewsErrorState(errorMsg: "cancel"));
          break;
        case DioExceptionType.connectionError:
          emit(GetNewsErrorState(errorMsg: "connectionError"));
          break;
        case DioExceptionType.unknown:
          emit(GetNewsErrorState(errorMsg: "unknown"));
          break;
        default:
          emit(GetNewsErrorState(errorMsg: "unknown"));
          break;
      }
      if (e.response?.statusCode == 404) {
        emit(GetNewsErrorState(errorMsg: "Not Found"));
      }
      if (e.response?.statusCode == 401) {
        emit(GetNewsErrorState(errorMsg: "Not Authorized"));
      }
      // emit(GetNewsErrorState(errorMsg: e.message ?? "Error"));
    } catch (e) {
      emit(GetNewsErrorState(errorMsg: e.toString()));
    }
  }
}
