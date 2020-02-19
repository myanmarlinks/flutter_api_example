import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';

@JsonSerializable()
class TaskModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  TaskModel({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}