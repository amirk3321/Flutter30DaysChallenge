

import 'package:flutter30dayschallenge/pages/youtube_search/model/thumbnail_data.dart';

class Thumbnails{

  final ThumbnailData medium;
  final ThumbnailData high;

  Thumbnails({this.medium, this.high});

  factory Thumbnails.fromJson(Map<String,dynamic> json){
    return Thumbnails(
      high: ThumbnailData.fromJson(json['high']),
      medium: ThumbnailData.fromJson(json['high'])
    );
  }
}