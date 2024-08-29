
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Repo/NewsRepository.dart';
import 'NewsEvent.dart';
import 'NewsState.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository newsRepository;

  NewsBloc(this.newsRepository) : super(NewsInitial()) {
    // Register the event handler for FetchNews event
    on<FetchNews>(_onFetchNews);
  }

  // Event handler for FetchNews
  Future<void> _onFetchNews(FetchNews event, Emitter<NewsState> emit) async {
    emit(NewsLoading());

    try {
      await Future.delayed(const Duration(seconds: 2));
      final articles = await newsRepository.fetchNews();
      emit(NewsLoaded(articles));
    } catch (e) {

      emit( const NewsError('Could not list fetch news'));
    }
  }
}
