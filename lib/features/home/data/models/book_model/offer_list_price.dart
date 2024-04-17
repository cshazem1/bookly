class OfferListPrice {
  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });

  int amountInMicros;
  String currencyCode;

  factory OfferListPrice.fromJson(Map<dynamic, dynamic> json) => OfferListPrice(
    amountInMicros: json["amountInMicros"],
    currencyCode: json["currencyCode"],
  );

  Map<dynamic, dynamic> toJson() => {
    "amountInMicros": amountInMicros,
    "currencyCode": currencyCode,
  };
}
