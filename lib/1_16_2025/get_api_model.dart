
// make a class
class PostModel {

  // declase the varaibles of your response
  int userId;
  int id;
  String title;
  String body;

  // constructor
  PostModel({required this.userId, required this.id, required this.title, required this.body});

  // from json function
  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(userId: json['userId'], id: json['id'], title: json['title'], body: json['body'],);
  }

  // to json function
  Map<String,dynamic> toJson(){
    return {
      "userId": userId,
      "id": id,
      "title": title,
      "body": body,
    };
  }
}