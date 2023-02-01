part of '../user_model.dart';

class NameInfo {
  NameInfo({
    required this.title,
    required this.first,
    required this.last,
  });

  final String title;
  final String first;
  final String last;

  String get displayName => '$title $first $last';

  factory NameInfo.fromJson(Map<String, dynamic> json) => NameInfo(
        title: json["title"],
        first: json["first"],
        last: json["last"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "first": first,
        "last": last,
      };
}
