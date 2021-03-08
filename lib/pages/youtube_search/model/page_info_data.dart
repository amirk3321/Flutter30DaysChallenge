



class PageInfoData{
 final int totalResults;
 final int resultsPerPage;

  PageInfoData({this.totalResults, this.resultsPerPage});

  factory PageInfoData.fromJson(Map<String,dynamic> json){
    return PageInfoData(
      resultsPerPage: json['resultsPerPage'],
      totalResults: json['totalResults']
    );
  }
}
