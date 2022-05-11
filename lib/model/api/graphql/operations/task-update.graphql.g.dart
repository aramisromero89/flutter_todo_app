// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task-update.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationtaskUpdate _$VariablesMutationtaskUpdateFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationtaskUpdate(
      taskId: json['taskId'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$VariablesMutationtaskUpdateToJson(
        VariablesMutationtaskUpdate instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'text': instance.text,
    };

MutationtaskUpdate _$MutationtaskUpdateFromJson(Map<String, dynamic> json) =>
    MutationtaskUpdate(
      updateTask: json['updateTask'] == null
          ? null
          : MutationtaskUpdate$updateTask.fromJson(
              json['updateTask'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskUpdateToJson(MutationtaskUpdate instance) =>
    <String, dynamic>{
      'updateTask': instance.updateTask?.toJson(),
      '__typename': instance.$__typename,
    };

MutationtaskUpdate$updateTask _$MutationtaskUpdate$updateTaskFromJson(
        Map<String, dynamic> json) =>
    MutationtaskUpdate$updateTask(
      task: MutationtaskUpdate$updateTask$task.fromJson(
          json['task'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskUpdate$updateTaskToJson(
        MutationtaskUpdate$updateTask instance) =>
    <String, dynamic>{
      'task': instance.task.toJson(),
      '__typename': instance.$__typename,
    };

MutationtaskUpdate$updateTask$task _$MutationtaskUpdate$updateTask$taskFromJson(
        Map<String, dynamic> json) =>
    MutationtaskUpdate$updateTask$task(
      id: json['id'] as String,
      text: json['text'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskUpdate$updateTask$taskToJson(
        MutationtaskUpdate$updateTask$task instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      '__typename': instance.$__typename,
    };
