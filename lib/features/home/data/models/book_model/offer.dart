import 'offer_list_price.dart';

class Offer {
  Offer({
    required this.finskyOfferType,
    required this.retailPrice,
    required this.listPrice,
  });

  int finskyOfferType;
  OfferListPrice retailPrice;
  OfferListPrice listPrice;

  factory Offer.fromJson(Map<dynamic, dynamic> json) => Offer(
    finskyOfferType: json["finskyOfferType"],
    retailPrice: OfferListPrice.fromJson(json["retailPrice"]),
    listPrice: OfferListPrice.fromJson(json["listPrice"]),
  );

  Map<dynamic, dynamic> toJson() => {
    "finskyOfferType": finskyOfferType,
    "retailPrice": retailPrice.toJson(),
    "listPrice": listPrice.toJson(),
  };
}
