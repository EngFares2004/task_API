class NewsArticle {
  final String title;
  final String description;
  final String urlToImage;

  NewsArticle({required this.title, required this.description, required this.urlToImage});

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
    );
  }
}
