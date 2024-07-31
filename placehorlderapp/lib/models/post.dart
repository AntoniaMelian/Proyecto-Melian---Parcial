class Post {
  final int id;
  final String title;
  final int userId;
  final String body;

  Post({required this.id, required this.title, required this.userId, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      userId: json['userId'],
      body: json['body'],
    );
  }
}
