import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r25/cubit/login_states.dart';

class NewCubit extends Cubit<GetNewsStates> {
  NewCubit() : super(GetNewsInitial());
  Dio dio = Dio();
  final String baseUrl = 'https://newsapi.org';
  final String apiKey = '084333ee941b4ab8980ce09fa483d13f';
  getNews() async {
    emit(GetNewsLoading());
    try {
      final res =
          await dio.get("$baseUrl/v2/everything?q=bitcoin&apiKey=$apiKey");

      emit(GetNewsSuccess(data: res.data['articles']));

      return res.data['articles'];
    } catch (e) {
      print(e);
      emit(GetNewsError());
    }
  }
}
