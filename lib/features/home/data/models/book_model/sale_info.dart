import 'package:bookly/features/home/data/models/book_model/sale_info_list_price.dart';

import 'offer.dart';

class SaleInfo {
  SaleInfo({
    required this.offers,
    required this.country,
    required this.isEbook,
    required this.saleability,
    required this.buyLink,
    required this.retailPrice,
    required this.listPrice,
  });

  List<Offer> offers;
  String country;
  bool isEbook;
  String saleability;
  String buyLink;
  SaleInfoListPrice retailPrice;
  SaleInfoListPrice listPrice;

  factory SaleInfo.fromJson(Map<dynamic, dynamic> json) => SaleInfo(
    offers: List<Offer>.from(json["offers"].map((x) => Offer.fromJson(x))),
    country: json["country"],
    isEbook: json["isEbook"],
    saleability: json["saleability"],
    buyLink: json["buyLink"],
    retailPrice: SaleInfoListPrice.fromJson(json["retailPrice"]),
    listPrice: SaleInfoListPrice.fromJson(json["listPrice"]),
  );

  Map<dynamic, dynamic> toJson() => {
    "offers": List<dynamic>.from(offers.map((x) => x.toJson())),
    "country": country,
    "isEbook": isEbook,
    "saleability": saleability,
    "buyLink": buyLink,
    "retailPrice": retailPrice.toJson(),
    "listPrice": listPrice.toJson(),
  };
}
