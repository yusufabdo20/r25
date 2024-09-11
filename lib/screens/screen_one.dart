import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r25/cubit/get_news_cubit.dart';
import 'package:r25/cubit/get_news_states.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen One"),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text("Hi"),
                ),
              );
            },
          ),
        ));
  }
}

//Cubit 
//
/*
1- States 
2- Cubit 
3- Functions
4- Funnction in UI  

 */








