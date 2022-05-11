// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signout.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MutationsignOut _$MutationsignOutFromJson(Map<String, dynamic> json) =>
    MutationsignOut(
      logOut: json['logOut'] == null
          ? null
          : MutationsignOut$logOut.fromJson(
              json['logOut'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignOutToJson(MutationsignOut instance) =>
    <String, dynamic>{
      'logOut': instance.logOut?.toJson(),
      '__typename': instance.$__typename,
    };

MutationsignOut$logOut _$MutationsignOut$logOutFromJson(
        Map<String, dynamic> json) =>
    MutationsignOut$logOut(
      ok: json['ok'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationsignOut$logOutToJson(
        MutationsignOut$logOut instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      '__typename': instance.$__typename,
    };
