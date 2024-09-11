class NewsModel {
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? content;

  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.content,
  });

  factory NewsModel.fromJson1(Map<String, dynamic> json) {
    return NewsModel(
      author: json['author'],
      title: json['author'],
      description: json['author'],
      url: json['author'],
      urlToImage: json['author'],
      content: json['author'],
    );
  }
}
