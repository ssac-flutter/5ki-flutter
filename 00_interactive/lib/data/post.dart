class Post {
  int id;
  String imageUrl;
  String title;
  String subTitle;
  bool isFavorite;
  int favoriteCount;
  String text;

  Post({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.isFavorite,
    required this.favoriteCount,
    required this.text,
  });
}
