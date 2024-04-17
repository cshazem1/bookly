class ImageLinks {
  ImageLinks({
    required this.thumbnail,
    required this.smallThumbnail,
  });

  String thumbnail;
  String smallThumbnail;

  factory ImageLinks.fromJson(Map<dynamic, dynamic> json) => ImageLinks(
    thumbnail: json["thumbnail"],
    smallThumbnail: json["smallThumbnail"],
  );

  Map<dynamic, dynamic> toJson() => {
    "thumbnail": thumbnail,
    "smallThumbnail": smallThumbnail,
  };
}
