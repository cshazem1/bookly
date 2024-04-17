class SaleInfoListPrice {
  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });

  double amount;
  String currencyCode;

  factory SaleInfoListPrice.fromJson(Map<dynamic, dynamic> json) => SaleInfoListPrice(
    amount: json["amount"]?.toDouble(),
    currencyCode: json["currencyCode"],
  );

  Map<dynamic, dynamic> toJson() => {
    "amount": amount,
    "currencyCode": currencyCode,
  };
}
