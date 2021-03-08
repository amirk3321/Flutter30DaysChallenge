import 'package:flutter30dayschallenge/pages/youtube_search/model/thumbnails.dart';

class SnippetData {
  final String publishedAt;
  final String channelId;
  final String title;
  final String description;
  final String channelTitle;
  final String liveBroadcastContent;
  final String publishTime;
  final Thumbnails thumbnails;

  SnippetData(
      {this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.channelTitle,
      this.liveBroadcastContent,
      this.publishTime,this.thumbnails});

  factory SnippetData.fromJson(Map<String,dynamic> json){
    return SnippetData(
      title: json['title'],
      publishTime: json['publishTime'],
      liveBroadcastContent: json['liveBroadcastContent'],
      channelTitle: json['channelTitle'],
      publishedAt: json['publishedAt'],
      description: json['description'],
      channelId: json['channelId'],
      thumbnails: Thumbnails.fromJson(json['thumbnails']),
    );
  }
}
