// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'NewsBloc/NewsBloc.dart';
import 'NewsBloc/NewsEvent.dart';
import 'NewsBloc/NewsState.dart';

class MyNewsPage extends StatelessWidget {
  const MyNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Student Data',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),

        ),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(

        builder: (context, state) {
          if (state is NewsLoading) {
            return const Center(child: CircularProgressIndicator(color: Colors.yellow,));
          }
          else if (state is NewsEmpty) {
            return const Center(child: Text("There is no data for my students"
                ,style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                )));
          }

          else if (state is NewsLoaded) {
            return ListView.builder(

              itemCount: state.articles.length,
              itemBuilder: (context, index) {
                final article = state.articles[index];
                return  Container(
                  margin: const EdgeInsets.all(10),

                decoration: const BoxDecoration(
                 color: Colors.brown,
                borderRadius: BorderRadius.all(
                Radius.circular(2000))),
                  child: ListTile(
                  
                    title: Text(article.title,style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),),
                    subtitle: Text(article.description,style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),),
                      leading: article.urlToImage != null
                          ?SizedBox(
                        height: 150,
                          width: 50,
                          child: ClipOval(
                      child: Image.network(article.urlToImage),
                  
                      )):null
                  
                  
                  ),
                );
              },
            );
          }
          else if (state is NewsError) {
            return Center(child: Text(state.message));
          } else {
            return Center(

                child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 200,
                          height: 200,
                          margin: const EdgeInsets.all(50),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(2000)),
                              boxShadow: [
                                BoxShadow(color: Colors.blue,
                                    offset: Offset(6, 6),
                                    spreadRadius: 2,
                                    blurRadius: 20)
                              ]),
                          child: ClipOval(
                           child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-hCsz_dMQh4FVS3QGEP9CDsSgDDauZzh1YeoCQnP_dcXtRWjZJ18rEBBqyTzduUv9Ak8&usqp=CAU"),

                     )),

                      const Text('Press button to load Student List'
                        ,style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,

                        ),
                      )
                ])

                );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           context.read<NewsBloc>().add(FetchNews());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}