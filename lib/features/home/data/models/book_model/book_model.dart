import 'package:bookly/features/home/data/models/book_model/sale_info.dart';
import 'package:bookly/features/home/data/models/book_model/search_info.dart';
import 'package:bookly/features/home/data/models/book_model/volume_info.dart';

import 'access_info.dart';

class BookModels {
  BookModels({
    required this.saleInfo,
    required this.searchInfo,
    required this.kind,
    required this.volumeInfo,
    required this.etag,
    required this.id,
    required this.accessInfo,
    required this.selfLink,
  });

  SaleInfo saleInfo;
  SearchInfo searchInfo;
  String kind;
  VolumeInfo volumeInfo;
  String etag;
  String id;
  AccessInfo accessInfo;
  String selfLink;

  factory BookModels.fromJson(Map<dynamic, dynamic> json) => BookModels(
    saleInfo: SaleInfo.fromJson(json["saleInfo"]),
    searchInfo: SearchInfo.fromJson(json["searchInfo"]),
    kind: json["kind"],
    volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
    etag: json["etag"],
    id: json["id"],
    accessInfo: AccessInfo.fromJson(json["accessInfo"]),
    selfLink: json["selfLink"],
  );

  Map<dynamic, dynamic> toJson() => {
    "saleInfo": saleInfo.toJson(),
    "searchInfo": searchInfo.toJson(),
    "kind": kind,
    "volumeInfo": volumeInfo.toJson(),
    "etag": etag,
    "id": id,
    "accessInfo": accessInfo.toJson(),
    "selfLink": selfLink,
  };
}
