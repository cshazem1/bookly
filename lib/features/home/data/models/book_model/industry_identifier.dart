class IndustryIdentifier {
  IndustryIdentifier({
    required this.identifier,
    required this.type,
  });

  String identifier;
  String type;

  factory IndustryIdentifier.fromJson(Map<dynamic, dynamic> json) => IndustryIdentifier(
    identifier: json["identifier"],
    type: json["type"],
  );

  Map<dynamic, dynamic> toJson() => {
    "identifier": identifier,
    "type": type,
  };
}
