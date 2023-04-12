import 'dart:convert';

SpamResponse spamResponseFromJson(String str) => SpamResponse.fromJson(json.decode(str));

String spamResponseToJson(SpamResponse data) => json.encode(data.toJson());

class SpamResponse {
  SpamResponse({
    required this.code,
    required this.message,
    this.payload,
  });

  int code;
  String message;
  dynamic payload;

  factory SpamResponse.fromJson(Map<String, dynamic> json) => SpamResponse(
    code: json["code"],
    message: json["message"],
    payload: json["payload"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
    "payload": payload,
  };
}
