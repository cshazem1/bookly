class Epub {
  Epub({
    required this.isAvailable,
  });

  bool isAvailable;

  factory Epub.fromJson(Map<dynamic, dynamic> json) => Epub(
    isAvailable: json["isAvailable"],
  );

  Map<dynamic, dynamic> toJson() => {
    "isAvailable": isAvailable,
  };
}
