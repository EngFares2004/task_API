import 'package:equatable/equatable.dart';

abstract class MyBlocEvent extends Equatable {
  const MyBlocEvent();

  @override
  List<Object> get props => [];
}

class MyEventStarted extends MyBlocEvent {}
