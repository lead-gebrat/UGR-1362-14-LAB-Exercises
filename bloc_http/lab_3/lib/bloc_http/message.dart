class Message {
  final int id;
  final String title;
  final String body;

  Message({required this.id, required this.title, required this.body});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
