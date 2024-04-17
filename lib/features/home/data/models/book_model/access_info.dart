import 'epub.dart';

class AccessInfo {
  AccessInfo({
    required this.accessViewStatus,
    required this.country,
    required this.viewAbility,
    required this.pdf,
    required this.webReaderLink,
    required this.epub,
    required this.publicDomain,
    required this.quoteSharingAllowed,
    required this.embeddable,
    required this.textToSpeechPermission,
  });

  String accessViewStatus;
  String country;
  String viewAbility;
  Epub pdf;
  String webReaderLink;
  Epub epub;
  bool publicDomain;
  bool quoteSharingAllowed;
  bool embeddable;
  String textToSpeechPermission;

  factory AccessInfo.fromJson(Map<dynamic, dynamic> json) => AccessInfo(
    accessViewStatus: json["accessViewStatus"],
    country: json["country"],
    viewAbility: json["viewability"],
    pdf: Epub.fromJson(json["pdf"]),
    webReaderLink: json["webReaderLink"],
    epub: Epub.fromJson(json["epub"]),
    publicDomain: json["publicDomain"],
    quoteSharingAllowed: json["quoteSharingAllowed"],
    embeddable: json["embeddable"],
    textToSpeechPermission: json["textToSpeechPermission"],
  );

  Map<dynamic, dynamic> toJson() => {
    "accessViewStatus": accessViewStatus,
    "country": country,
    "viewability": viewAbility,
    "pdf": pdf.toJson(),
    "webReaderLink": webReaderLink,
    "epub": epub.toJson(),
    "publicDomain": publicDomain,
    "quoteSharingAllowed": quoteSharingAllowed,
    "embeddable": embeddable,
    "textToSpeechPermission": textToSpeechPermission,
  };
}
