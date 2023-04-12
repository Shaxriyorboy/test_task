import 'dart:convert';

SpamRequest spamRequestFromJson(String str) => SpamRequest.fromJson(json.decode(str));

String spamRequestToJson(SpamRequest data) => json.encode(data.toJson());

class SpamRequest {
  SpamRequest({
    required this.toUserId,
    required this.category,
    required this.text,
  });

  int toUserId;
  String category;
  String text;

  factory SpamRequest.fromJson(Map<String, dynamic> json) => SpamRequest(
    toUserId: json["to_user_id"],
    category: json["category"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "to_user_id": toUserId,
    "category": category,
    "text": text,
  };
}
