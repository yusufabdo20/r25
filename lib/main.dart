import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r25/cubit/news_cubit.dart';
import 'package:r25/screens/screen_one.dart';

void main() {
  runApp(FlutterTestApp());
}

class FlutterTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => NewsCubit()..getNews(),
        child: ScreenOne(),
      ),
    );
  }
}
