// To parse this JSON data, do
//
//     final imageapi = imageapiFromJson(jsonString);

import 'dart:convert';

List<Imageapi> imageapiFromJson(String str) => List<Imageapi>.from(json.decode(str).map((x) => Imageapi.fromJson(x)));

String imageapiToJson(List<Imageapi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Imageapi {
    int albumId;
    int id;
    String title;
    String url;
    String thumbnailUrl;

    Imageapi({
        required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl,
    });

    factory Imageapi.fromJson(Map<String, dynamic> json) => Imageapi(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}
