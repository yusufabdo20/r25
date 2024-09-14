import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r25/cubit/news_cubit.dart';
import 'package:r25/cubit/news_states.dart';
import 'package:r25/models/news_model.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: BlocBuilder<NewsCubit, NewsStates>(
          builder: (context, state) {
            if (state is GetNewsErrorState) {
              return Center(
                child: Text(state.errorMsg),
              );
            }
            if (state is GetNewsLoadingState) {
              return LinearProgressIndicator();
            } else if (state is GetNewsSuccessState) {
              List<NewsModel> news = state.newsModels;
              return ListView.builder(
                itemCount: news.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.network(news[index].urlToImage ?? ""),
                      title: Text(news[index].author ?? "NNNONN"),
                      subtitle: Text(news[index].description ?? "NNNONN"),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: Icon(
                  Icons.adb_sharp,
                  size: 100,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

// States 
// 1- Success
// 2- Error 
// 3- Loading (Time , Period  (send Req , Rec Resp ))