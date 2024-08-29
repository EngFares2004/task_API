
import 'package:equatable/equatable.dart';
import '../Model/NewsArticle.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  get articles => null;
}

class NewsInitial extends NewsState {
  @override
  List<Object> get props => [];
}

class NewsLoading extends NewsState {
  @override
  List<Object> get props => [];
}

class NewsLoaded extends NewsState {
  @override
  final List<NewsArticle> articles;

  const NewsLoaded(this.articles);

  @override
  List<Object> get props => [articles];
}

class NewsEmpty extends NewsState {
  @override
  final List<NewsArticle> articles;

  @override
  List<Object> get props => [];
  const NewsEmpty(this.articles);
}

class NewsError extends NewsState {
  final String message;

  const NewsError(this.message);

  @override
  List<Object> get props => [message];
}