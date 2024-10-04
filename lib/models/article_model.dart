class ArticaleModel {
  final String? image;
  final String title;
  final String? subTitle;

  ArticaleModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticaleModel.fromJason(jason) {
    return ArticaleModel(
        image: jason['urlToImage'],
        title: jason['title'],
        subTitle: jason['description']);
  }
}
