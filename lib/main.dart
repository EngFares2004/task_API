import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/MyNewsPage.dart';
import 'package:task/NewsBloc/NewsBloc.dart';
import 'package:task/Repo/NewsRepository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Task',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffc7e65ff)),
          useMaterial3: true,
        ),
        home: BlocProvider<NewsBloc>(
          create: (BuildContext context) => NewsBloc(NewsRepository()),
          child: const MyNewsPage(),
        )
    );

  }
}

