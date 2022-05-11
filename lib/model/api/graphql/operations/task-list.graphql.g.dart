// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task-list.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuerytaskList _$QuerytaskListFromJson(Map<String, dynamic> json) =>
    QuerytaskList(
      viewer:
          QuerytaskList$viewer.fromJson(json['viewer'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QuerytaskListToJson(QuerytaskList instance) =>
    <String, dynamic>{
      'viewer': instance.viewer.toJson(),
      '__typename': instance.$__typename,
    };

QuerytaskList$viewer _$QuerytaskList$viewerFromJson(
        Map<String, dynamic> json) =>
    QuerytaskList$viewer(
      user: QuerytaskList$viewer$user.fromJson(
          json['user'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QuerytaskList$viewerToJson(
        QuerytaskList$viewer instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      '__typename': instance.$__typename,
    };

QuerytaskList$viewer$user _$QuerytaskList$viewer$userFromJson(
        Map<String, dynamic> json) =>
    QuerytaskList$viewer$user(
      tasks: QuerytaskList$viewer$user$tasks.fromJson(
          json['tasks'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QuerytaskList$viewer$userToJson(
        QuerytaskList$viewer$user instance) =>
    <String, dynamic>{
      'tasks': instance.tasks.toJson(),
      '__typename': instance.$__typename,
    };

QuerytaskList$viewer$user$tasks _$QuerytaskList$viewer$user$tasksFromJson(
        Map<String, dynamic> json) =>
    QuerytaskList$viewer$user$tasks(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QuerytaskList$viewer$user$tasks$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QuerytaskList$viewer$user$tasksToJson(
        QuerytaskList$viewer$user$tasks instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QuerytaskList$viewer$user$tasks$edges
    _$QuerytaskList$viewer$user$tasks$edgesFromJson(
            Map<String, dynamic> json) =>
        QuerytaskList$viewer$user$tasks$edges(
          node: json['node'] == null
              ? null
              : QuerytaskList$viewer$user$tasks$edges$node.fromJson(
                  json['node'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QuerytaskList$viewer$user$tasks$edgesToJson(
        QuerytaskList$viewer$user$tasks$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

QuerytaskList$viewer$user$tasks$edges$node
    _$QuerytaskList$viewer$user$tasks$edges$nodeFromJson(
            Map<String, dynamic> json) =>
        QuerytaskList$viewer$user$tasks$edges$node(
          id: json['id'] as String,
          text: json['text'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QuerytaskList$viewer$user$tasks$edges$nodeToJson(
        QuerytaskList$viewer$user$tasks$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      '__typename': instance.$__typename,
    };
