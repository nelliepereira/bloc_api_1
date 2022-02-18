import 'dart:convert';

class PhotoModel {
 late   int albumId;
 late  int id;
 late  String title;
 late  String url;
 late  String thumbnailUrl;

  PhotoModel({required this.albumId, required this.id, required this.title, required this.url, required  this.thumbnailUrl});

  PhotoModel.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['albumId'] = this.albumId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['thumbnailUrl'] = this.thumbnailUrl;
    return data;
  }
}
