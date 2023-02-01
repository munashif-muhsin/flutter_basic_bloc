part of '../user_model.dart';

class UserId {
  UserId({
    required this.name,
    this.value,
  });

  final String name;
  final String? value;

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
        name: json["name"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
      };
}
