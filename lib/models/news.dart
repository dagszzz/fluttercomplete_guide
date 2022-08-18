// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'dart:convert';

List<News> newsFromJson(String str) =>
    List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

String newsToJson(List<News> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class News {
  News({
    required this.the0,
    required this.the1,
    required this.the2,
    required this.newsTitle,
    required this.newsDesc,
    required this.validuntil,
  });

  String the0;
  String the1;
  DateTime the2;
  String newsTitle;
  String newsDesc;
  DateTime validuntil;

  factory News.fromJson(Map<String, dynamic> json) => News(
        the0: json["0"],
        the1: json["1"],
        the2: DateTime.parse(json["2"]),
        newsTitle: json["news_title"],
        newsDesc: json["news_desc"],
        validuntil: DateTime.parse(json["validuntil"]),
      );

  Map<String, dynamic> toJson() => {
        "0": the0,
        "1": the1,
        "2": the2.toIso8601String(),
        "news_title": newsTitle,
        "news_desc": newsDesc,
        "validuntil": validuntil.toIso8601String(),
      };
}
