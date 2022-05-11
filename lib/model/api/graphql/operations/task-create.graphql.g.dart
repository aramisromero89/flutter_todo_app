// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task-create.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationtaskCreate _$VariablesMutationtaskCreateFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationtaskCreate(
      userId: json['userId'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$VariablesMutationtaskCreateToJson(
        VariablesMutationtaskCreate instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'text': instance.text,
    };

MutationtaskCreate _$MutationtaskCreateFromJson(Map<String, dynamic> json) =>
    MutationtaskCreate(
      updateUser: json['updateUser'] == null
          ? null
          : MutationtaskCreate$updateUser.fromJson(
              json['updateUser'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskCreateToJson(MutationtaskCreate instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser?.toJson(),
      '__typename': instance.$__typename,
    };

MutationtaskCreate$updateUser _$MutationtaskCreate$updateUserFromJson(
        Map<String, dynamic> json) =>
    MutationtaskCreate$updateUser(
      user: MutationtaskCreate$updateUser$user.fromJson(
          json['user'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskCreate$updateUserToJson(
        MutationtaskCreate$updateUser instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      '__typename': instance.$__typename,
    };

MutationtaskCreate$updateUser$user _$MutationtaskCreate$updateUser$userFromJson(
        Map<String, dynamic> json) =>
    MutationtaskCreate$updateUser$user(
      tasks: MutationtaskCreate$updateUser$user$tasks.fromJson(
          json['tasks'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationtaskCreate$updateUser$userToJson(
        MutationtaskCreate$updateUser$user instance) =>
    <String, dynamic>{
      'tasks': instance.tasks.toJson(),
      '__typename': instance.$__typename,
    };

MutationtaskCreate$updateUser$user$tasks
    _$MutationtaskCreate$updateUser$user$tasksFromJson(
            Map<String, dynamic> json) =>
        MutationtaskCreate$updateUser$user$tasks(
          edges: (json['edges'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MutationtaskCreate$updateUser$user$tasks$edges.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationtaskCreate$updateUser$user$tasksToJson(
        MutationtaskCreate$updateUser$user$tasks instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

MutationtaskCreate$updateUser$user$tasks$edges
    _$MutationtaskCreate$updateUser$user$tasks$edgesFromJson(
            Map<String, dynamic> json) =>
        MutationtaskCreate$updateUser$user$tasks$edges(
          node: json['node'] == null
              ? null
              : MutationtaskCreate$updateUser$user$tasks$edges$node.fromJson(
                  json['node'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationtaskCreate$updateUser$user$tasks$edgesToJson(
        MutationtaskCreate$updateUser$user$tasks$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

MutationtaskCreate$updateUser$user$tasks$edges$node
    _$MutationtaskCreate$updateUser$user$tasks$edges$nodeFromJson(
            Map<String, dynamic> json) =>
        MutationtaskCreate$updateUser$user$tasks$edges$node(
          id: json['id'] as String,
          text: json['text'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$MutationtaskCreate$updateUser$user$tasks$edges$nodeToJson(
            MutationtaskCreate$updateUser$user$tasks$edges$node instance) =>
        <String, dynamic>{
          'id': instance.id,
          'text': instance.text,
          '__typename': instance.$__typename,
        };
