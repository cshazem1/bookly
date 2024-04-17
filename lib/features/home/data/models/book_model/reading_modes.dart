class ReadingModes {
  ReadingModes({
    required this.image,
    required this.text,
  });

  bool image;
  bool text;

  factory ReadingModes.fromJson(Map<dynamic, dynamic> json) => ReadingModes(
    image: json["image"],
    text: json["text"],
  );

  Map<dynamic, dynamic> toJson() => {
    "image": image,
    "text": text,
  };
}
