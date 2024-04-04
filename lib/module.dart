class Post{
  final String userID;
  final String title;
  final String description;

  Post({
    required this.userID,
    required this.title,
    required this.description
  });
  factory Post.fromJson(Map<String, dynamic> json) => Post(
    userID: json['userID'],
    title: json['title'],
    description: json['body']
  );
}