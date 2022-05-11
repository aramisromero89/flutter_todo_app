// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationsignIn _$VariablesMutationsignInFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationsignIn(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$VariablesMutationsignInToJson(
        VariablesMutationsignIn instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

MutationsignIn _$MutationsignInFromJson(Map<String, dynamic> json) =>
    MutationsignIn(
      logIn: json['logIn'] == null
          ? null
          : MutationsignIn$logIn.fromJson(
              json['logIn'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignInToJson(MutationsignIn instance) =>
    <String, dynamic>{
      'logIn': instance.logIn?.toJson(),
      '__typename': instance.$__typename,
    };

MutationsignIn$logIn _$MutationsignIn$logInFromJson(
        Map<String, dynamic> json) =>
    MutationsignIn$logIn(
      viewer: MutationsignIn$logIn$viewer.fromJson(
          json['viewer'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignIn$logInToJson(
        MutationsignIn$logIn instance) =>
    <String, dynamic>{
      'viewer': instance.viewer.toJson(),
      '__typename': instance.$__typename,
    };

MutationsignIn$logIn$viewer _$MutationsignIn$logIn$viewerFromJson(
        Map<String, dynamic> json) =>
    MutationsignIn$logIn$viewer(
      user: MutationsignIn$logIn$viewer$user.fromJson(
          json['user'] as Map<String, dynamic>),
      sessionToken: json['sessionToken'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignIn$logIn$viewerToJson(
        MutationsignIn$logIn$viewer instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'sessionToken': instance.sessionToken,
      '__typename': instance.$__typename,
    };

MutationsignIn$logIn$viewer$user _$MutationsignIn$logIn$viewer$userFromJson(
        Map<String, dynamic> json) =>
    MutationsignIn$logIn$viewer$user(
      id: json['id'] as String,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignIn$logIn$viewer$userToJson(
        MutationsignIn$logIn$viewer$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar,
      '__typename': instance.$__typename,
    };
