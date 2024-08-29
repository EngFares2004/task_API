import 'package:flutter_bloc/flutter_bloc.dart';

import 'MyBlocEvent.dart';
import 'MyBlocState.dart';

class MyBloc extends Bloc<MyBlocEvent, MyBlocState> {

  MyBloc() : super(MyStateInitial()) {
    on<MyEventStarted>(_onMyEventStarted);
  }


  void _onMyEventStarted(
      MyEventStarted event,
      Emitter<MyBlocState> emit,
      ) async {
    emit(MyStateLoading());
    try {
      // Simulate fetching data
      await Future.delayed(const Duration(seconds: 2));
      emit(MyStateLoaded(data: "This is the fetched data"));
    } catch (e) {
      emit(MyStateError(error: e.toString()));
    }
  }
}
