// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentUserFragment _$FragmentUserFragmentFromJson(
        Map<String, dynamic> json) =>
    FragmentUserFragment(
      id: json['id'] as String,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentUserFragmentToJson(
        FragmentUserFragment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar,
      '__typename': instance.$__typename,
    };
