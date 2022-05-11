// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task-delete.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationtaskDelete _$VariablesMutationtaskDeleteFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationtaskDelete(
      taskId: json['taskId'] as String,
    );

Map<String, dynamic> _$VariablesMutationtaskDeleteToJson(
        VariablesMutationtaskDelete instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
    };

MutationtaskDelete _$MutationtaskDeleteFromJson(Map<String, dynamic> json) =>
    MutationtaskDelete(
      deleteTask: json['deleteTask'] == null
          ? null
          : MutationtaskDelete$deleteTask.fromJson(
              json['deleteTask'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskDeleteToJson(MutationtaskDelete instance) =>
    <String, dynamic>{
      'deleteTask': instance.deleteTask?.toJson(),
      '__typename': instance.$__typename,
    };

MutationtaskDelete$deleteTask _$MutationtaskDelete$deleteTaskFromJson(
        Map<String, dynamic> json) =>
    MutationtaskDelete$deleteTask(
      task: MutationtaskDelete$deleteTask$task.fromJson(
          json['task'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskDelete$deleteTaskToJson(
        MutationtaskDelete$deleteTask instance) =>
    <String, dynamic>{
      'task': instance.task.toJson(),
      '__typename': instance.$__typename,
    };

MutationtaskDelete$deleteTask$task _$MutationtaskDelete$deleteTask$taskFromJson(
        Map<String, dynamic> json) =>
    MutationtaskDelete$deleteTask$task(
      id: json['id'] as String,
      text: json['text'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskDelete$deleteTask$taskToJson(
        MutationtaskDelete$deleteTask$task instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      '__typename': instance.$__typename,
    };
