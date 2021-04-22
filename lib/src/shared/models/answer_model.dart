import 'dart:convert';

class AnswerModel {
  final String title;
  final bool isRights;

  AnswerModel({
    required this.title,
    this.isRights = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRights': isRights,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      title: map['title'],
      isRights: map['isRights'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) =>
      AnswerModel.fromMap(json.decode(source));
}
