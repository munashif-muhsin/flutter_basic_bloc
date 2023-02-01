part of '../user_model.dart';

class DateAndAge {
  DateAndAge({
    required this.date,
    required this.age,
  });

  final DateTime date;
  final int age;

  factory DateAndAge.fromJson(Map<String, dynamic> json) => DateAndAge(
        date: DateTime.parse(json["date"]),
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "age": age,
      };
}
