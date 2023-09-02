import 'dart:convert';

List<ChatRoom> chatRoomFromJson(String str) => List<ChatRoom>.from(json.decode(str).map((x) => ChatRoom.fromJson(x)));

String chatRoomToJson(List<ChatRoom> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ChatRoom {
  String requestSubject;
  String title;
  String email1;
  String email2;

  ChatRoom({
    required this.requestSubject,
    required this.title,
    required this.email1,
    required this.email2,
  });

  factory ChatRoom.fromJson(Map<String, dynamic> json) => ChatRoom(
    requestSubject: json["requestSubject"],
    title: json["title"],
    email1: json["email1"],
    email2: json["email2"],
  );

  Map<String, dynamic> toJson() => {
    "requestSubject": requestSubject,
    "title": title,
    "email1": email1,
    "email2": email2,
  };
}
