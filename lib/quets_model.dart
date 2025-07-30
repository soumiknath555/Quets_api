
class QuetsDataModels {
  int limit;
  int skip;
  int total;
  List<QuetsModels> quotes ;


  QuetsDataModels ({
    required this.limit,
    required this.skip,
    required this.total,
    required this.quotes
});


  // FAtch Quets

    factory QuetsDataModels.fromJson(Map<String , dynamic> json ) {

      List<QuetsModels> mQuets = [];
      for (Map<String , dynamic > eachQuets in json["quotes"]) {
        var eachQuetsModel = QuetsModels.fromJson(eachQuets);
        mQuets.add(eachQuetsModel);
      }


      return QuetsDataModels(
          limit: json["limit"],
          skip: json["skip"],
          total: json["total"],
          quotes: mQuets ,
      );
    }

}





class QuetsModels {
  int id ;
  String quote;
  String author;

  QuetsModels({
    required this.id,
    required this.quote,
    required this.author
});

  factory QuetsModels.fromJson(Map<String,dynamic> json ) {
    return QuetsModels(
        id: json["id"],
        quote: json["quote"],
        author: json["author"]
    );
  }

}