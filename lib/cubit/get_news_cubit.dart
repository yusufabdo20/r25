import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r25/cubit/get_news_states.dart';

class NewCubit extends Cubit<GetNewsStates> {
  NewCubit(super.initialState);
  Dio dio = Dio();
  getNews() async {}
}
