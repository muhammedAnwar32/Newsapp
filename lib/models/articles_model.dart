class Articlesmodel {
  final String? image;
  final String title;
  final dynamic subtitle;
  final String? url;
  Articlesmodel(
      {required this.url,
      required this.image,
      required this.title,
      required this.subtitle});
  factory Articlesmodel.fromjson(json) {
    return Articlesmodel(
        url: json['url'],
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description']);
  }
}
