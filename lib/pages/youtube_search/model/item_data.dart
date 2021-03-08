

import 'package:flutter30dayschallenge/pages/youtube_search/model/id_data.dart';
import 'package:flutter30dayschallenge/pages/youtube_search/model/snippet_data.dart';

class ItemData{
  final String kind;
  final String etag;
  final IdData id;
  final SnippetData snippet;



  ItemData({this.kind, this.etag,this.id,this.snippet});

  factory ItemData.fromJson(Map<String,dynamic> json){
    return ItemData(
      kind: json['kind'],
      etag: json['etag'],
      id: IdData.fromJson(json['id']),
      snippet: SnippetData.fromJson(json['snippet'])
    );
  }
}