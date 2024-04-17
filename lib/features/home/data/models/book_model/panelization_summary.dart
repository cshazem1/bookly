class PanelizationSummary {
  PanelizationSummary({
    required this.containsImageBubbles,
    required this.containsEpubBubbles,
  });

  bool containsImageBubbles;
  bool containsEpubBubbles;

  factory PanelizationSummary.fromJson(Map<dynamic, dynamic> json) => PanelizationSummary(
    containsImageBubbles: json["containsImageBubbles"],
    containsEpubBubbles: json["containsEpubBubbles"],
  );

  Map<dynamic, dynamic> toJson() => {
    "containsImageBubbles": containsImageBubbles,
    "containsEpubBubbles": containsEpubBubbles,
  };
}
