// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentSessionFragment _$FragmentSessionFragmentFromJson(
        Map<String, dynamic> json) =>
    FragmentSessionFragment(
      user: FragmentSessionFragment$user.fromJson(
          json['user'] as Map<String, dynamic>),
      sessionToken: json['sessionToken'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentSessionFragmentToJson(
        FragmentSessionFragment instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'sessionToken': instance.sessionToken,
      '__typename': instance.$__typename,
    };

FragmentSessionFragment$user _$FragmentSessionFragment$userFromJson(
        Map<String, dynamic> json) =>
    FragmentSessionFragment$user(
      id: json['id'] as String,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentSessionFragment$userToJson(
        FragmentSessionFragment$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar,
      '__typename': instance.$__typename,
    };
