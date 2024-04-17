import 'package:bookly/features/home/data/models/book_model/panelization_summary.dart';
import 'package:bookly/features/home/data/models/book_model/reading_modes.dart';

import 'image_links.dart';
import 'industry_identifier.dart';

class VolumeInfo {
  VolumeInfo({
    required this.industryIdentifiers,
    required this.pageCount,
    required this.printType,
    required this.readingModes,
    required this.previewLink,
    required this.canonicalVolumeLink,
    required this.description,
    required this.language,
    required this.title,
    required this.imageLinks,
    required this.panelizationSummary,
    required this.publisher,
    required this.publishedDate,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.authors,
    required this.infoLink,
  });

  List<IndustryIdentifier> industryIdentifiers;
  int pageCount;
  String printType;
  ReadingModes readingModes;
  String previewLink;
  String canonicalVolumeLink;
  String description;
  String language;
  String title;
  ImageLinks imageLinks;
  PanelizationSummary panelizationSummary;
  String publisher;
  DateTime publishedDate;
  List<String> categories;
  String maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  List<String> authors;
  String infoLink;

  factory VolumeInfo.fromJson(Map<dynamic, dynamic> json) => VolumeInfo(
    industryIdentifiers: List<IndustryIdentifier>.from(json["industryIdentifiers"].map((x) => IndustryIdentifier.fromJson(x))),
    pageCount: json["pageCount"],
    printType: json["printType"],
    readingModes: ReadingModes.fromJson(json["readingModes"]),
    previewLink: json["previewLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
    description: json["description"],
    language: json["language"],
    title: json["title"],
    imageLinks: ImageLinks.fromJson(json["imageLinks"]),
    panelizationSummary: PanelizationSummary.fromJson(json["panelizationSummary"]),
    publisher: json["publisher"],
    publishedDate: DateTime.parse(json["publishedDate"]),
    categories: List<String>.from(json["categories"].map((x) => x)),
    maturityRating: json["maturityRating"],
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: json["contentVersion"],
    authors: List<String>.from(json["authors"].map((x) => x)),
    infoLink: json["infoLink"],
  );

  Map<dynamic, dynamic> toJson() => {
    "industryIdentifiers": List<dynamic>.from(industryIdentifiers.map((x) => x.toJson())),
    "pageCount": pageCount,
    "printType": printType,
    "readingModes": readingModes.toJson(),
    "previewLink": previewLink,
    "canonicalVolumeLink": canonicalVolumeLink,
    "description": description,
    "language": language,
    "title": title,
    "imageLinks": imageLinks.toJson(),
    "panelizationSummary": panelizationSummary.toJson(),
    "publisher": publisher,
    "publishedDate": "${publishedDate.year.toString().padLeft(4, '0')}-${publishedDate.month.toString().padLeft(2, '0')}-${publishedDate.day.toString().padLeft(2, '0')}",
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "authors": List<dynamic>.from(authors.map((x) => x)),
    "infoLink": infoLink,
  };
}
