// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentTaskFragment _$FragmentTaskFragmentFromJson(
        Map<String, dynamic> json) =>
    FragmentTaskFragment(
      id: json['id'] as String,
      text: json['text'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentTaskFragmentToJson(
        FragmentTaskFragment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      '__typename': instance.$__typename,
    };
