class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  ArticleModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticleModel.fromJason(json) {
    return ArticleModel(
        image: json['urLToImage'],
        title: json['title'],
        subTitle: json['subTitle']);
  }
}
