import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r25/cubit/get_news_cubit.dart';
import 'package:r25/screens/screen_one.dart';

void main() {
  Text t1 = Text("Hello Yusuf");
  Text("Hello Yusuf");
  runApp(FlutterTestApp());
}

class FlutterTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
    );
  }
}
