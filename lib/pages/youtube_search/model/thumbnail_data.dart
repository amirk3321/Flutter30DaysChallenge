

class ThumbnailData{
  final String url;
  final int width;
  final int height;

  ThumbnailData({this.url, this.width, this.height});

  factory ThumbnailData.fromJson(Map<String,dynamic> json){
    return ThumbnailData(
      height: json['height'],
      width: json['width'],
      url: json['url']
    );
  }
}