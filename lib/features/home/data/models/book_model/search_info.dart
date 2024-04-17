class SearchInfo {
  SearchInfo({
    required this.textSnippet,
  });

  String textSnippet;

  factory SearchInfo.fromJson(Map<dynamic, dynamic> json) => SearchInfo(
    textSnippet: json["textSnippet"],
  );

  Map<dynamic, dynamic> toJson() => {
    "textSnippet": textSnippet,
  };
}
