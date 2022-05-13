// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationsignUp _$VariablesMutationsignUpFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationsignUp(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$VariablesMutationsignUpToJson(
        VariablesMutationsignUp instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

MutationsignUp _$MutationsignUpFromJson(Map<String, dynamic> json) =>
    MutationsignUp(
      signUp: json['signUp'] == null
          ? null
          : MutationsignUp$signUp.fromJson(
              json['signUp'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignUpToJson(MutationsignUp instance) =>
    <String, dynamic>{
      'signUp': instance.signUp?.toJson(),
      '__typename': instance.$__typename,
    };

MutationsignUp$signUp _$MutationsignUp$signUpFromJson(
        Map<String, dynamic> json) =>
    MutationsignUp$signUp(
      viewer: MutationsignUp$signUp$viewer.fromJson(
          json['viewer'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignUp$signUpToJson(
        MutationsignUp$signUp instance) =>
    <String, dynamic>{
      'viewer': instance.viewer.toJson(),
      '__typename': instance.$__typename,
    };

MutationsignUp$signUp$viewer _$MutationsignUp$signUp$viewerFromJson(
        Map<String, dynamic> json) =>
    MutationsignUp$signUp$viewer(
      user: MutationsignUp$signUp$viewer$user.fromJson(
          json['user'] as Map<String, dynamic>),
      sessionToken: json['sessionToken'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignUp$signUp$viewerToJson(
        MutationsignUp$signUp$viewer instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'sessionToken': instance.sessionToken,
      '__typename': instance.$__typename,
    };

MutationsignUp$signUp$viewer$user _$MutationsignUp$signUp$viewer$userFromJson(
        Map<String, dynamic> json) =>
    MutationsignUp$signUp$viewer$user(
      id: json['id'] as String,
      username: json['username'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignUp$signUp$viewer$userToJson(
        MutationsignUp$signUp$viewer$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      '__typename': instance.$__typename,
    };
