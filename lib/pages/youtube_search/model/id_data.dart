

class IdData{
  final String kind;
  final String videoId;

  IdData({this.kind, this.videoId});

  factory IdData.fromJson(Map<String,dynamic> json){
    return IdData(
      kind: json['kind'],
      videoId: json['videoId']
    );
  }
}