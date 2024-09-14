class NewsModel {
  final String? author;
  final String? title;
  final String? description;
  final String? urlToImage;
  final String? content;

  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      author: json['author'],
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      content: json['content'],
    );
  }
}
  /*
Map<String, dynamic>  json =  {
          
            "author": "Mashdigi",
            "title": "在台開放106座超級充電站，Tesla從即日起試行讓非Tesla車款也能使用其超級充電站",
            "description": "Tesla表示目前在台灣市場已經開放106座超級充電站，總計累積超過630支超級充電座，同時也宣布從即日起試行讓非Tesla車款也能使用其超級充電站。",
            "urlToImage": "https://s.yimg.com/os/creatr-uploaded-images/2024-09/7f99c200-71e4-11ef-bcad-666c99a516e7",
            "content": "Bruno Mars210IGThank You TaiwanIG"
**        }
   */
