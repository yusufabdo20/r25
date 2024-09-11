import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r25/cubit/login_cubit.dart';
import 'package:r25/cubit/login_states.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: BlocBuilder<NewCubit, GetNewsStates>(
        builder: (context, state) {
          if (state is GetNewsLoading) {
            return const Center(
              child: LinearProgressIndicator(),
            );
          } else if (state is GetNewsSuccess) {
            return Center(
              child: ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(state.data[index]['description']),
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: Text("Error"),
            );
          }
        },
      ),
    );
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








