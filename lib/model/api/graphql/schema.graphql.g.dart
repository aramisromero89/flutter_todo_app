// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputACLInput _$InputACLInputFromJson(Map<String, dynamic> json) =>
    InputACLInput(
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => InputUserACLInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => InputRoleACLInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      public: json['public'] == null
          ? null
          : InputPublicACLInput.fromJson(
              json['public'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputACLInputToJson(InputACLInput instance) =>
    <String, dynamic>{
      'users': instance.users?.map((e) => e.toJson()).toList(),
      'roles': instance.roles?.map((e) => e.toJson()).toList(),
      'public': instance.public?.toJson(),
    };

InputArrayWhereInput _$InputArrayWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputArrayWhereInput(
      equalTo: json['equalTo'] as String?,
      notEqualTo: json['notEqualTo'] as String?,
      lessThan: json['lessThan'] as String?,
      lessThanOrEqualTo: json['lessThanOrEqualTo'] as String?,
      greaterThan: json['greaterThan'] as String?,
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      exists: json['exists'] as bool?,
      containedBy: (json['containedBy'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      contains: (json['contains'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputArrayWhereInputToJson(
        InputArrayWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
      'in': instance.$in,
      'notIn': instance.notIn,
      'exists': instance.exists,
      'containedBy': instance.containedBy,
      'contains': instance.contains,
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputBooleanWhereInput _$InputBooleanWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputBooleanWhereInput(
      equalTo: json['equalTo'] as bool?,
      notEqualTo: json['notEqualTo'] as bool?,
      exists: json['exists'] as bool?,
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputBooleanWhereInputToJson(
        InputBooleanWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'exists': instance.exists,
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputBoxInput _$InputBoxInputFromJson(Map<String, dynamic> json) =>
    InputBoxInput(
      bottomLeft: InputGeoPointInput.fromJson(
          json['bottomLeft'] as Map<String, dynamic>),
      upperRight: InputGeoPointInput.fromJson(
          json['upperRight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputBoxInputToJson(InputBoxInput instance) =>
    <String, dynamic>{
      'bottomLeft': instance.bottomLeft.toJson(),
      'upperRight': instance.upperRight.toJson(),
    };

InputBytesWhereInput _$InputBytesWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputBytesWhereInput(
      equalTo: json['equalTo'] as String?,
      notEqualTo: json['notEqualTo'] as String?,
      lessThan: json['lessThan'] as String?,
      lessThanOrEqualTo: json['lessThanOrEqualTo'] as String?,
      greaterThan: json['greaterThan'] as String?,
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      exists: json['exists'] as bool?,
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputBytesWhereInputToJson(
        InputBytesWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
      'in': instance.$in,
      'notIn': instance.notIn,
      'exists': instance.exists,
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputCenterSphereInput _$InputCenterSphereInputFromJson(
        Map<String, dynamic> json) =>
    InputCenterSphereInput(
      center:
          InputGeoPointInput.fromJson(json['center'] as Map<String, dynamic>),
      distance: (json['distance'] as num).toDouble(),
    );

Map<String, dynamic> _$InputCenterSphereInputToJson(
        InputCenterSphereInput instance) =>
    <String, dynamic>{
      'center': instance.center.toJson(),
      'distance': instance.distance,
    };

InputCreateClassInput _$InputCreateClassInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateClassInput(
      name: json['name'] as String,
      schemaFields: json['schemaFields'] == null
          ? null
          : InputSchemaFieldsInput.fromJson(
              json['schemaFields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputCreateClassInputToJson(
        InputCreateClassInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'schemaFields': instance.schemaFields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputCreateFileInput _$InputCreateFileInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateFileInput(
      upload: json['upload'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputCreateFileInputToJson(
        InputCreateFileInput instance) =>
    <String, dynamic>{
      'upload': instance.upload,
      'clientMutationId': instance.clientMutationId,
    };

InputCreateRoleFieldsInput _$InputCreateRoleFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateRoleFieldsInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      name: json['name'] as String?,
      users: json['users'] == null
          ? null
          : InputUserRelationInput.fromJson(
              json['users'] as Map<String, dynamic>),
      roles: json['roles'] == null
          ? null
          : InputRoleRelationInput.fromJson(
              json['roles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputCreateRoleFieldsInputToJson(
        InputCreateRoleFieldsInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'name': instance.name,
      'users': instance.users?.toJson(),
      'roles': instance.roles?.toJson(),
    };

InputCreateRoleInput _$InputCreateRoleInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateRoleInput(
      fields: json['fields'] == null
          ? null
          : InputCreateRoleFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputCreateRoleInputToJson(
        InputCreateRoleInput instance) =>
    <String, dynamic>{
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputCreateSessionFieldsInput _$InputCreateSessionFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateSessionFieldsInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      restricted: json['restricted'] as bool?,
      user: json['user'] == null
          ? null
          : InputUserPointerInput.fromJson(
              json['user'] as Map<String, dynamic>),
      installationId: json['installationId'] as String?,
      sessionToken: json['sessionToken'] as String?,
      expiresAt: json['expiresAt'] as String?,
      createdWith: json['createdWith'] as String?,
    );

Map<String, dynamic> _$InputCreateSessionFieldsInputToJson(
        InputCreateSessionFieldsInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'restricted': instance.restricted,
      'user': instance.user?.toJson(),
      'installationId': instance.installationId,
      'sessionToken': instance.sessionToken,
      'expiresAt': instance.expiresAt,
      'createdWith': instance.createdWith,
    };

InputCreateSessionInput _$InputCreateSessionInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateSessionInput(
      fields: json['fields'] == null
          ? null
          : InputCreateSessionFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputCreateSessionInputToJson(
        InputCreateSessionInput instance) =>
    <String, dynamic>{
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputCreateTaskFieldsInput _$InputCreateTaskFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateTaskFieldsInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      text: json['text'] as String,
    );

Map<String, dynamic> _$InputCreateTaskFieldsInputToJson(
        InputCreateTaskFieldsInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'text': instance.text,
    };

InputCreateTaskInput _$InputCreateTaskInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateTaskInput(
      fields: json['fields'] == null
          ? null
          : InputCreateTaskFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputCreateTaskInputToJson(
        InputCreateTaskInput instance) =>
    <String, dynamic>{
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputCreateUserFieldsInput _$InputCreateUserFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateUserFieldsInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      authData: json['authData'] as String?,
      tasks: json['tasks'] == null
          ? null
          : InputTaskRelationInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$InputCreateUserFieldsInputToJson(
        InputCreateUserFieldsInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'authData': instance.authData,
      'tasks': instance.tasks?.toJson(),
      'avatar': instance.avatar,
    };

InputCreateUserInput _$InputCreateUserInputFromJson(
        Map<String, dynamic> json) =>
    InputCreateUserInput(
      fields: json['fields'] == null
          ? null
          : InputCreateUserFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputCreateUserInputToJson(
        InputCreateUserInput instance) =>
    <String, dynamic>{
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputDateWhereInput _$InputDateWhereInputFromJson(Map<String, dynamic> json) =>
    InputDateWhereInput(
      equalTo: json['equalTo'] as String?,
      notEqualTo: json['notEqualTo'] as String?,
      lessThan: json['lessThan'] as String?,
      lessThanOrEqualTo: json['lessThanOrEqualTo'] as String?,
      greaterThan: json['greaterThan'] as String?,
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      exists: json['exists'] as bool?,
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputDateWhereInputToJson(
        InputDateWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
      'in': instance.$in,
      'notIn': instance.notIn,
      'exists': instance.exists,
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputDeleteClassInput _$InputDeleteClassInputFromJson(
        Map<String, dynamic> json) =>
    InputDeleteClassInput(
      name: json['name'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputDeleteClassInputToJson(
        InputDeleteClassInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'clientMutationId': instance.clientMutationId,
    };

InputDeleteRoleInput _$InputDeleteRoleInputFromJson(
        Map<String, dynamic> json) =>
    InputDeleteRoleInput(
      id: json['id'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputDeleteRoleInputToJson(
        InputDeleteRoleInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientMutationId': instance.clientMutationId,
    };

InputDeleteSessionInput _$InputDeleteSessionInputFromJson(
        Map<String, dynamic> json) =>
    InputDeleteSessionInput(
      id: json['id'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputDeleteSessionInputToJson(
        InputDeleteSessionInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientMutationId': instance.clientMutationId,
    };

InputDeleteTaskInput _$InputDeleteTaskInputFromJson(
        Map<String, dynamic> json) =>
    InputDeleteTaskInput(
      id: json['id'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputDeleteTaskInputToJson(
        InputDeleteTaskInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientMutationId': instance.clientMutationId,
    };

InputDeleteUserInput _$InputDeleteUserInputFromJson(
        Map<String, dynamic> json) =>
    InputDeleteUserInput(
      id: json['id'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputDeleteUserInputToJson(
        InputDeleteUserInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientMutationId': instance.clientMutationId,
    };

InputFileInput _$InputFileInputFromJson(Map<String, dynamic> json) =>
    InputFileInput(
      file: json['file'] as String?,
      upload: json['upload'] as String?,
      unlink: json['unlink'] as bool?,
    );

Map<String, dynamic> _$InputFileInputToJson(InputFileInput instance) =>
    <String, dynamic>{
      'file': instance.file,
      'upload': instance.upload,
      'unlink': instance.unlink,
    };

InputFileWhereInput _$InputFileWhereInputFromJson(Map<String, dynamic> json) =>
    InputFileWhereInput(
      equalTo: json['equalTo'] as String?,
      notEqualTo: json['notEqualTo'] as String?,
      lessThan: json['lessThan'] as String?,
      lessThanOrEqualTo: json['lessThanOrEqualTo'] as String?,
      greaterThan: json['greaterThan'] as String?,
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      exists: json['exists'] as bool?,
      matchesRegex: json['matchesRegex'] as String?,
      options: json['options'] as String?,
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputFileWhereInputToJson(
        InputFileWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
      'in': instance.$in,
      'notIn': instance.notIn,
      'exists': instance.exists,
      'matchesRegex': instance.matchesRegex,
      'options': instance.options,
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputGeoIntersectsInput _$InputGeoIntersectsInputFromJson(
        Map<String, dynamic> json) =>
    InputGeoIntersectsInput(
      point: json['point'] == null
          ? null
          : InputGeoPointInput.fromJson(json['point'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputGeoIntersectsInputToJson(
        InputGeoIntersectsInput instance) =>
    <String, dynamic>{
      'point': instance.point?.toJson(),
    };

InputGeoPointInput _$InputGeoPointInputFromJson(Map<String, dynamic> json) =>
    InputGeoPointInput(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$InputGeoPointInputToJson(InputGeoPointInput instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

InputGeoPointWhereInput _$InputGeoPointWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputGeoPointWhereInput(
      exists: json['exists'] as bool?,
      nearSphere: json['nearSphere'] == null
          ? null
          : InputGeoPointInput.fromJson(
              json['nearSphere'] as Map<String, dynamic>),
      maxDistance: (json['maxDistance'] as num?)?.toDouble(),
      maxDistanceInRadians: (json['maxDistanceInRadians'] as num?)?.toDouble(),
      maxDistanceInMiles: (json['maxDistanceInMiles'] as num?)?.toDouble(),
      maxDistanceInKilometers:
          (json['maxDistanceInKilometers'] as num?)?.toDouble(),
      within: json['within'] == null
          ? null
          : InputWithinInput.fromJson(json['within'] as Map<String, dynamic>),
      geoWithin: json['geoWithin'] == null
          ? null
          : InputGeoWithinInput.fromJson(
              json['geoWithin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputGeoPointWhereInputToJson(
        InputGeoPointWhereInput instance) =>
    <String, dynamic>{
      'exists': instance.exists,
      'nearSphere': instance.nearSphere?.toJson(),
      'maxDistance': instance.maxDistance,
      'maxDistanceInRadians': instance.maxDistanceInRadians,
      'maxDistanceInMiles': instance.maxDistanceInMiles,
      'maxDistanceInKilometers': instance.maxDistanceInKilometers,
      'within': instance.within?.toJson(),
      'geoWithin': instance.geoWithin?.toJson(),
    };

InputGeoWithinInput _$InputGeoWithinInputFromJson(Map<String, dynamic> json) =>
    InputGeoWithinInput(
      polygon: (json['polygon'] as List<dynamic>?)
          ?.map((e) => InputGeoPointInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      centerSphere: json['centerSphere'] == null
          ? null
          : InputCenterSphereInput.fromJson(
              json['centerSphere'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputGeoWithinInputToJson(
        InputGeoWithinInput instance) =>
    <String, dynamic>{
      'polygon': instance.polygon?.map((e) => e.toJson()).toList(),
      'centerSphere': instance.centerSphere?.toJson(),
    };

InputIdWhereInput _$InputIdWhereInputFromJson(Map<String, dynamic> json) =>
    InputIdWhereInput(
      equalTo: json['equalTo'] as String?,
      notEqualTo: json['notEqualTo'] as String?,
      lessThan: json['lessThan'] as String?,
      lessThanOrEqualTo: json['lessThanOrEqualTo'] as String?,
      greaterThan: json['greaterThan'] as String?,
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      exists: json['exists'] as bool?,
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputIdWhereInputToJson(InputIdWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
      'in': instance.$in,
      'notIn': instance.notIn,
      'exists': instance.exists,
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputKeyValueInput _$InputKeyValueInputFromJson(Map<String, dynamic> json) =>
    InputKeyValueInput(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$InputKeyValueInputToJson(InputKeyValueInput instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

InputLogInInput _$InputLogInInputFromJson(Map<String, dynamic> json) =>
    InputLogInInput(
      username: json['username'] as String,
      password: json['password'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputLogInInputToJson(InputLogInInput instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'clientMutationId': instance.clientMutationId,
    };

InputLogInWithInput _$InputLogInWithInputFromJson(Map<String, dynamic> json) =>
    InputLogInWithInput(
      authData: json['authData'] as String,
      fields: json['fields'] == null
          ? null
          : InputUserLoginWithInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputLogInWithInputToJson(
        InputLogInWithInput instance) =>
    <String, dynamic>{
      'authData': instance.authData,
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputLogOutInput _$InputLogOutInputFromJson(Map<String, dynamic> json) =>
    InputLogOutInput(
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputLogOutInputToJson(InputLogOutInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
    };

InputNumberWhereInput _$InputNumberWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputNumberWhereInput(
      equalTo: (json['equalTo'] as num?)?.toDouble(),
      notEqualTo: (json['notEqualTo'] as num?)?.toDouble(),
      lessThan: (json['lessThan'] as num?)?.toDouble(),
      lessThanOrEqualTo: (json['lessThanOrEqualTo'] as num?)?.toDouble(),
      greaterThan: (json['greaterThan'] as num?)?.toDouble(),
      greaterThanOrEqualTo: (json['greaterThanOrEqualTo'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      exists: json['exists'] as bool?,
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputNumberWhereInputToJson(
        InputNumberWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
      'in': instance.$in,
      'notIn': instance.notIn,
      'exists': instance.exists,
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputObjectWhereInput _$InputObjectWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputObjectWhereInput(
      equalTo: json['equalTo'] == null
          ? null
          : InputKeyValueInput.fromJson(
              json['equalTo'] as Map<String, dynamic>),
      notEqualTo: json['notEqualTo'] == null
          ? null
          : InputKeyValueInput.fromJson(
              json['notEqualTo'] as Map<String, dynamic>),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputKeyValueInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputKeyValueInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      lessThan: json['lessThan'] == null
          ? null
          : InputKeyValueInput.fromJson(
              json['lessThan'] as Map<String, dynamic>),
      lessThanOrEqualTo: json['lessThanOrEqualTo'] == null
          ? null
          : InputKeyValueInput.fromJson(
              json['lessThanOrEqualTo'] as Map<String, dynamic>),
      greaterThan: json['greaterThan'] == null
          ? null
          : InputKeyValueInput.fromJson(
              json['greaterThan'] as Map<String, dynamic>),
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] == null
          ? null
          : InputKeyValueInput.fromJson(
              json['greaterThanOrEqualTo'] as Map<String, dynamic>),
      exists: json['exists'] as bool?,
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputObjectWhereInputToJson(
        InputObjectWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo?.toJson(),
      'notEqualTo': instance.notEqualTo?.toJson(),
      'in': instance.$in?.map((e) => e?.toJson()).toList(),
      'notIn': instance.notIn?.map((e) => e?.toJson()).toList(),
      'lessThan': instance.lessThan?.toJson(),
      'lessThanOrEqualTo': instance.lessThanOrEqualTo?.toJson(),
      'greaterThan': instance.greaterThan?.toJson(),
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo?.toJson(),
      'exists': instance.exists,
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputPointerFieldInput _$InputPointerFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputPointerFieldInput(
      name: json['name'] as String,
      targetClassName: json['targetClassName'] as String,
    );

Map<String, dynamic> _$InputPointerFieldInputToJson(
        InputPointerFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'targetClassName': instance.targetClassName,
    };

InputPolygonWhereInput _$InputPolygonWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputPolygonWhereInput(
      exists: json['exists'] as bool?,
      geoIntersects: json['geoIntersects'] == null
          ? null
          : InputGeoIntersectsInput.fromJson(
              json['geoIntersects'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputPolygonWhereInputToJson(
        InputPolygonWhereInput instance) =>
    <String, dynamic>{
      'exists': instance.exists,
      'geoIntersects': instance.geoIntersects?.toJson(),
    };

InputPublicACLInput _$InputPublicACLInputFromJson(Map<String, dynamic> json) =>
    InputPublicACLInput(
      read: json['read'] as bool,
      write: json['write'] as bool,
    );

Map<String, dynamic> _$InputPublicACLInputToJson(
        InputPublicACLInput instance) =>
    <String, dynamic>{
      'read': instance.read,
      'write': instance.write,
    };

InputReadOptionsInput _$InputReadOptionsInputFromJson(
        Map<String, dynamic> json) =>
    InputReadOptionsInput(
      readPreference: $enumDecodeNullable(
          _$EnumReadPreferenceEnumMap, json['readPreference'],
          unknownValue: EnumReadPreference.$unknown),
      includeReadPreference: $enumDecodeNullable(
          _$EnumReadPreferenceEnumMap, json['includeReadPreference'],
          unknownValue: EnumReadPreference.$unknown),
      subqueryReadPreference: $enumDecodeNullable(
          _$EnumReadPreferenceEnumMap, json['subqueryReadPreference'],
          unknownValue: EnumReadPreference.$unknown),
    );

Map<String, dynamic> _$InputReadOptionsInputToJson(
        InputReadOptionsInput instance) =>
    <String, dynamic>{
      'readPreference': _$EnumReadPreferenceEnumMap[instance.readPreference],
      'includeReadPreference':
          _$EnumReadPreferenceEnumMap[instance.includeReadPreference],
      'subqueryReadPreference':
          _$EnumReadPreferenceEnumMap[instance.subqueryReadPreference],
    };

const _$EnumReadPreferenceEnumMap = {
  EnumReadPreference.primary: 'PRIMARY',
  EnumReadPreference.primaryPreferred: 'PRIMARY_PREFERRED',
  EnumReadPreference.secondary: 'SECONDARY',
  EnumReadPreference.secondaryPreferred: 'SECONDARY_PREFERRED',
  EnumReadPreference.nearest: 'NEAREST',
  EnumReadPreference.$unknown: r'$unknown',
};

InputRelationFieldInput _$InputRelationFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputRelationFieldInput(
      name: json['name'] as String,
      targetClassName: json['targetClassName'] as String,
    );

Map<String, dynamic> _$InputRelationFieldInputToJson(
        InputRelationFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'targetClassName': instance.targetClassName,
    };

InputResetPasswordInput _$InputResetPasswordInputFromJson(
        Map<String, dynamic> json) =>
    InputResetPasswordInput(
      email: json['email'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputResetPasswordInputToJson(
        InputResetPasswordInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'clientMutationId': instance.clientMutationId,
    };

InputRoleACLInput _$InputRoleACLInputFromJson(Map<String, dynamic> json) =>
    InputRoleACLInput(
      roleName: json['roleName'] as String,
      read: json['read'] as bool,
      write: json['write'] as bool,
    );

Map<String, dynamic> _$InputRoleACLInputToJson(InputRoleACLInput instance) =>
    <String, dynamic>{
      'roleName': instance.roleName,
      'read': instance.read,
      'write': instance.write,
    };

InputRolePointerInput _$InputRolePointerInputFromJson(
        Map<String, dynamic> json) =>
    InputRolePointerInput(
      link: json['link'] as String?,
      createAndLink: json['createAndLink'] == null
          ? null
          : InputCreateRoleFieldsInput.fromJson(
              json['createAndLink'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputRolePointerInputToJson(
        InputRolePointerInput instance) =>
    <String, dynamic>{
      'link': instance.link,
      'createAndLink': instance.createAndLink?.toJson(),
    };

InputRoleRelationInput _$InputRoleRelationInputFromJson(
        Map<String, dynamic> json) =>
    InputRoleRelationInput(
      add: (json['add'] as List<dynamic>?)?.map((e) => e as String).toList(),
      remove:
          (json['remove'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createAndAdd: (json['createAndAdd'] as List<dynamic>?)
          ?.map((e) =>
              InputCreateRoleFieldsInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputRoleRelationInputToJson(
        InputRoleRelationInput instance) =>
    <String, dynamic>{
      'add': instance.add,
      'remove': instance.remove,
      'createAndAdd': instance.createAndAdd?.map((e) => e.toJson()).toList(),
    };

InputRoleRelationWhereInput _$InputRoleRelationWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputRoleRelationWhereInput(
      have: json['have'] == null
          ? null
          : InputRoleWhereInput.fromJson(json['have'] as Map<String, dynamic>),
      haveNot: json['haveNot'] == null
          ? null
          : InputRoleWhereInput.fromJson(
              json['haveNot'] as Map<String, dynamic>),
      exists: json['exists'] as bool?,
    );

Map<String, dynamic> _$InputRoleRelationWhereInputToJson(
        InputRoleRelationWhereInput instance) =>
    <String, dynamic>{
      'have': instance.have?.toJson(),
      'haveNot': instance.haveNot?.toJson(),
      'exists': instance.exists,
    };

InputRoleWhereInput _$InputRoleWhereInputFromJson(Map<String, dynamic> json) =>
    InputRoleWhereInput(
      objectId: json['objectId'] == null
          ? null
          : InputIdWhereInput.fromJson(
              json['objectId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      ACL: json['ACL'] == null
          ? null
          : InputObjectWhereInput.fromJson(json['ACL'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : InputStringWhereInput.fromJson(
              json['name'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : InputUserRelationWhereInput.fromJson(
              json['users'] as Map<String, dynamic>),
      roles: json['roles'] == null
          ? null
          : InputRoleRelationWhereInput.fromJson(
              json['roles'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputIdWhereInput.fromJson(json['id'] as Map<String, dynamic>),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => InputRoleWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => InputRoleWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOR: (json['NOR'] as List<dynamic>?)
          ?.map((e) => InputRoleWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputRoleWhereInputToJson(
        InputRoleWhereInput instance) =>
    <String, dynamic>{
      'objectId': instance.objectId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'ACL': instance.ACL?.toJson(),
      'name': instance.name?.toJson(),
      'users': instance.users?.toJson(),
      'roles': instance.roles?.toJson(),
      'id': instance.id?.toJson(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'NOR': instance.NOR?.map((e) => e.toJson()).toList(),
    };

InputSchemaArrayFieldInput _$InputSchemaArrayFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaArrayFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaArrayFieldInputToJson(
        InputSchemaArrayFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaBooleanFieldInput _$InputSchemaBooleanFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaBooleanFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaBooleanFieldInputToJson(
        InputSchemaBooleanFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaBytesFieldInput _$InputSchemaBytesFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaBytesFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaBytesFieldInputToJson(
        InputSchemaBytesFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaDateFieldInput _$InputSchemaDateFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaDateFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaDateFieldInputToJson(
        InputSchemaDateFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaFieldInput _$InputSchemaFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaFieldInputToJson(
        InputSchemaFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaFieldsInput _$InputSchemaFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaFieldsInput(
      addStrings: (json['addStrings'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaStringFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addNumbers: (json['addNumbers'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaNumberFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addBooleans: (json['addBooleans'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaBooleanFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addArrays: (json['addArrays'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaArrayFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addObjects: (json['addObjects'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaObjectFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addDates: (json['addDates'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaDateFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addFiles: (json['addFiles'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaFileFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addGeoPoint: json['addGeoPoint'] == null
          ? null
          : InputSchemaGeoPointFieldInput.fromJson(
              json['addGeoPoint'] as Map<String, dynamic>),
      addPolygons: (json['addPolygons'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaPolygonFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addBytes: (json['addBytes'] as List<dynamic>?)
          ?.map((e) =>
              InputSchemaBytesFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addPointers: (json['addPointers'] as List<dynamic>?)
          ?.map(
              (e) => InputPointerFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addRelations: (json['addRelations'] as List<dynamic>?)
          ?.map((e) =>
              InputRelationFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      remove: (json['remove'] as List<dynamic>?)
          ?.map(
              (e) => InputSchemaFieldInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputSchemaFieldsInputToJson(
        InputSchemaFieldsInput instance) =>
    <String, dynamic>{
      'addStrings': instance.addStrings?.map((e) => e.toJson()).toList(),
      'addNumbers': instance.addNumbers?.map((e) => e.toJson()).toList(),
      'addBooleans': instance.addBooleans?.map((e) => e.toJson()).toList(),
      'addArrays': instance.addArrays?.map((e) => e.toJson()).toList(),
      'addObjects': instance.addObjects?.map((e) => e.toJson()).toList(),
      'addDates': instance.addDates?.map((e) => e.toJson()).toList(),
      'addFiles': instance.addFiles?.map((e) => e.toJson()).toList(),
      'addGeoPoint': instance.addGeoPoint?.toJson(),
      'addPolygons': instance.addPolygons?.map((e) => e.toJson()).toList(),
      'addBytes': instance.addBytes?.map((e) => e.toJson()).toList(),
      'addPointers': instance.addPointers?.map((e) => e.toJson()).toList(),
      'addRelations': instance.addRelations?.map((e) => e.toJson()).toList(),
      'remove': instance.remove?.map((e) => e.toJson()).toList(),
    };

InputSchemaFileFieldInput _$InputSchemaFileFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaFileFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaFileFieldInputToJson(
        InputSchemaFileFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaGeoPointFieldInput _$InputSchemaGeoPointFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaGeoPointFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaGeoPointFieldInputToJson(
        InputSchemaGeoPointFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaNumberFieldInput _$InputSchemaNumberFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaNumberFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaNumberFieldInputToJson(
        InputSchemaNumberFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaObjectFieldInput _$InputSchemaObjectFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaObjectFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaObjectFieldInputToJson(
        InputSchemaObjectFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaPolygonFieldInput _$InputSchemaPolygonFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaPolygonFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaPolygonFieldInputToJson(
        InputSchemaPolygonFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSchemaStringFieldInput _$InputSchemaStringFieldInputFromJson(
        Map<String, dynamic> json) =>
    InputSchemaStringFieldInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$InputSchemaStringFieldInputToJson(
        InputSchemaStringFieldInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

InputSearchInput _$InputSearchInputFromJson(Map<String, dynamic> json) =>
    InputSearchInput(
      term: json['term'] as String,
      language: json['language'] as String?,
      caseSensitive: json['caseSensitive'] as bool?,
      diacriticSensitive: json['diacriticSensitive'] as bool?,
    );

Map<String, dynamic> _$InputSearchInputToJson(InputSearchInput instance) =>
    <String, dynamic>{
      'term': instance.term,
      'language': instance.language,
      'caseSensitive': instance.caseSensitive,
      'diacriticSensitive': instance.diacriticSensitive,
    };

InputSelectInput _$InputSelectInputFromJson(Map<String, dynamic> json) =>
    InputSelectInput(
      query: InputSubqueryInput.fromJson(json['query'] as Map<String, dynamic>),
      key: json['key'] as String,
    );

Map<String, dynamic> _$InputSelectInputToJson(InputSelectInput instance) =>
    <String, dynamic>{
      'query': instance.query.toJson(),
      'key': instance.key,
    };

InputSendVerificationEmailInput _$InputSendVerificationEmailInputFromJson(
        Map<String, dynamic> json) =>
    InputSendVerificationEmailInput(
      email: json['email'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputSendVerificationEmailInputToJson(
        InputSendVerificationEmailInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'clientMutationId': instance.clientMutationId,
    };

InputSessionPointerInput _$InputSessionPointerInputFromJson(
        Map<String, dynamic> json) =>
    InputSessionPointerInput(
      link: json['link'] as String?,
      createAndLink: json['createAndLink'] == null
          ? null
          : InputCreateSessionFieldsInput.fromJson(
              json['createAndLink'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputSessionPointerInputToJson(
        InputSessionPointerInput instance) =>
    <String, dynamic>{
      'link': instance.link,
      'createAndLink': instance.createAndLink?.toJson(),
    };

InputSessionRelationInput _$InputSessionRelationInputFromJson(
        Map<String, dynamic> json) =>
    InputSessionRelationInput(
      add: (json['add'] as List<dynamic>?)?.map((e) => e as String).toList(),
      remove:
          (json['remove'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createAndAdd: (json['createAndAdd'] as List<dynamic>?)
          ?.map((e) =>
              InputCreateSessionFieldsInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputSessionRelationInputToJson(
        InputSessionRelationInput instance) =>
    <String, dynamic>{
      'add': instance.add,
      'remove': instance.remove,
      'createAndAdd': instance.createAndAdd?.map((e) => e.toJson()).toList(),
    };

InputSessionRelationWhereInput _$InputSessionRelationWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputSessionRelationWhereInput(
      have: json['have'] == null
          ? null
          : InputSessionWhereInput.fromJson(
              json['have'] as Map<String, dynamic>),
      haveNot: json['haveNot'] == null
          ? null
          : InputSessionWhereInput.fromJson(
              json['haveNot'] as Map<String, dynamic>),
      exists: json['exists'] as bool?,
    );

Map<String, dynamic> _$InputSessionRelationWhereInputToJson(
        InputSessionRelationWhereInput instance) =>
    <String, dynamic>{
      'have': instance.have?.toJson(),
      'haveNot': instance.haveNot?.toJson(),
      'exists': instance.exists,
    };

InputSessionWhereInput _$InputSessionWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputSessionWhereInput(
      objectId: json['objectId'] == null
          ? null
          : InputIdWhereInput.fromJson(
              json['objectId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      ACL: json['ACL'] == null
          ? null
          : InputObjectWhereInput.fromJson(json['ACL'] as Map<String, dynamic>),
      restricted: json['restricted'] == null
          ? null
          : InputBooleanWhereInput.fromJson(
              json['restricted'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : InputUserRelationWhereInput.fromJson(
              json['user'] as Map<String, dynamic>),
      installationId: json['installationId'] == null
          ? null
          : InputStringWhereInput.fromJson(
              json['installationId'] as Map<String, dynamic>),
      sessionToken: json['sessionToken'] == null
          ? null
          : InputStringWhereInput.fromJson(
              json['sessionToken'] as Map<String, dynamic>),
      expiresAt: json['expiresAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['expiresAt'] as Map<String, dynamic>),
      createdWith: json['createdWith'] == null
          ? null
          : InputObjectWhereInput.fromJson(
              json['createdWith'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputIdWhereInput.fromJson(json['id'] as Map<String, dynamic>),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => InputSessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => InputSessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOR: (json['NOR'] as List<dynamic>?)
          ?.map(
              (e) => InputSessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputSessionWhereInputToJson(
        InputSessionWhereInput instance) =>
    <String, dynamic>{
      'objectId': instance.objectId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'ACL': instance.ACL?.toJson(),
      'restricted': instance.restricted?.toJson(),
      'user': instance.user?.toJson(),
      'installationId': instance.installationId?.toJson(),
      'sessionToken': instance.sessionToken?.toJson(),
      'expiresAt': instance.expiresAt?.toJson(),
      'createdWith': instance.createdWith?.toJson(),
      'id': instance.id?.toJson(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'NOR': instance.NOR?.map((e) => e.toJson()).toList(),
    };

InputSignUpInput _$InputSignUpInputFromJson(Map<String, dynamic> json) =>
    InputSignUpInput(
      fields: json['fields'] == null
          ? null
          : InputCreateUserFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputSignUpInputToJson(InputSignUpInput instance) =>
    <String, dynamic>{
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputStringWhereInput _$InputStringWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputStringWhereInput(
      equalTo: json['equalTo'] as String?,
      notEqualTo: json['notEqualTo'] as String?,
      lessThan: json['lessThan'] as String?,
      lessThanOrEqualTo: json['lessThanOrEqualTo'] as String?,
      greaterThan: json['greaterThan'] as String?,
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      exists: json['exists'] as bool?,
      matchesRegex: json['matchesRegex'] as String?,
      options: json['options'] as String?,
      text: json['text'] == null
          ? null
          : InputTextInput.fromJson(json['text'] as Map<String, dynamic>),
      inQueryKey: json['inQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['inQueryKey'] as Map<String, dynamic>),
      notInQueryKey: json['notInQueryKey'] == null
          ? null
          : InputSelectInput.fromJson(
              json['notInQueryKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputStringWhereInputToJson(
        InputStringWhereInput instance) =>
    <String, dynamic>{
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
      'in': instance.$in,
      'notIn': instance.notIn,
      'exists': instance.exists,
      'matchesRegex': instance.matchesRegex,
      'options': instance.options,
      'text': instance.text?.toJson(),
      'inQueryKey': instance.inQueryKey?.toJson(),
      'notInQueryKey': instance.notInQueryKey?.toJson(),
    };

InputSubqueryInput _$InputSubqueryInputFromJson(Map<String, dynamic> json) =>
    InputSubqueryInput(
      className: json['className'] as String,
      where: json['where'] as String,
    );

Map<String, dynamic> _$InputSubqueryInputToJson(InputSubqueryInput instance) =>
    <String, dynamic>{
      'className': instance.className,
      'where': instance.where,
    };

InputTaskPointerInput _$InputTaskPointerInputFromJson(
        Map<String, dynamic> json) =>
    InputTaskPointerInput(
      link: json['link'] as String?,
      createAndLink: json['createAndLink'] == null
          ? null
          : InputCreateTaskFieldsInput.fromJson(
              json['createAndLink'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputTaskPointerInputToJson(
        InputTaskPointerInput instance) =>
    <String, dynamic>{
      'link': instance.link,
      'createAndLink': instance.createAndLink?.toJson(),
    };

InputTaskRelationInput _$InputTaskRelationInputFromJson(
        Map<String, dynamic> json) =>
    InputTaskRelationInput(
      add: (json['add'] as List<dynamic>?)?.map((e) => e as String).toList(),
      remove:
          (json['remove'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createAndAdd: (json['createAndAdd'] as List<dynamic>?)
          ?.map((e) =>
              InputCreateTaskFieldsInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputTaskRelationInputToJson(
        InputTaskRelationInput instance) =>
    <String, dynamic>{
      'add': instance.add,
      'remove': instance.remove,
      'createAndAdd': instance.createAndAdd?.map((e) => e.toJson()).toList(),
    };

InputTaskRelationWhereInput _$InputTaskRelationWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputTaskRelationWhereInput(
      have: json['have'] == null
          ? null
          : InputTaskWhereInput.fromJson(json['have'] as Map<String, dynamic>),
      haveNot: json['haveNot'] == null
          ? null
          : InputTaskWhereInput.fromJson(
              json['haveNot'] as Map<String, dynamic>),
      exists: json['exists'] as bool?,
    );

Map<String, dynamic> _$InputTaskRelationWhereInputToJson(
        InputTaskRelationWhereInput instance) =>
    <String, dynamic>{
      'have': instance.have?.toJson(),
      'haveNot': instance.haveNot?.toJson(),
      'exists': instance.exists,
    };

InputTaskWhereInput _$InputTaskWhereInputFromJson(Map<String, dynamic> json) =>
    InputTaskWhereInput(
      objectId: json['objectId'] == null
          ? null
          : InputIdWhereInput.fromJson(
              json['objectId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      ACL: json['ACL'] == null
          ? null
          : InputObjectWhereInput.fromJson(json['ACL'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : InputStringWhereInput.fromJson(
              json['text'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputIdWhereInput.fromJson(json['id'] as Map<String, dynamic>),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => InputTaskWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => InputTaskWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOR: (json['NOR'] as List<dynamic>?)
          ?.map((e) => InputTaskWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputTaskWhereInputToJson(
        InputTaskWhereInput instance) =>
    <String, dynamic>{
      'objectId': instance.objectId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'ACL': instance.ACL?.toJson(),
      'text': instance.text?.toJson(),
      'id': instance.id?.toJson(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'NOR': instance.NOR?.map((e) => e.toJson()).toList(),
    };

InputTextInput _$InputTextInputFromJson(Map<String, dynamic> json) =>
    InputTextInput(
      search: InputSearchInput.fromJson(json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputTextInputToJson(InputTextInput instance) =>
    <String, dynamic>{
      'search': instance.search.toJson(),
    };

InputUpdateClassInput _$InputUpdateClassInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateClassInput(
      name: json['name'] as String,
      schemaFields: json['schemaFields'] == null
          ? null
          : InputSchemaFieldsInput.fromJson(
              json['schemaFields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputUpdateClassInputToJson(
        InputUpdateClassInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'schemaFields': instance.schemaFields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputUpdateRoleFieldsInput _$InputUpdateRoleFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateRoleFieldsInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      name: json['name'] as String?,
      users: json['users'] == null
          ? null
          : InputUserRelationInput.fromJson(
              json['users'] as Map<String, dynamic>),
      roles: json['roles'] == null
          ? null
          : InputRoleRelationInput.fromJson(
              json['roles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUpdateRoleFieldsInputToJson(
        InputUpdateRoleFieldsInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'name': instance.name,
      'users': instance.users?.toJson(),
      'roles': instance.roles?.toJson(),
    };

InputUpdateRoleInput _$InputUpdateRoleInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateRoleInput(
      id: json['id'] as String,
      fields: json['fields'] == null
          ? null
          : InputUpdateRoleFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputUpdateRoleInputToJson(
        InputUpdateRoleInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputUpdateSessionFieldsInput _$InputUpdateSessionFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateSessionFieldsInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      restricted: json['restricted'] as bool?,
      user: json['user'] == null
          ? null
          : InputUserPointerInput.fromJson(
              json['user'] as Map<String, dynamic>),
      installationId: json['installationId'] as String?,
      sessionToken: json['sessionToken'] as String?,
      expiresAt: json['expiresAt'] as String?,
      createdWith: json['createdWith'] as String?,
    );

Map<String, dynamic> _$InputUpdateSessionFieldsInputToJson(
        InputUpdateSessionFieldsInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'restricted': instance.restricted,
      'user': instance.user?.toJson(),
      'installationId': instance.installationId,
      'sessionToken': instance.sessionToken,
      'expiresAt': instance.expiresAt,
      'createdWith': instance.createdWith,
    };

InputUpdateSessionInput _$InputUpdateSessionInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateSessionInput(
      id: json['id'] as String,
      fields: json['fields'] == null
          ? null
          : InputUpdateSessionFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputUpdateSessionInputToJson(
        InputUpdateSessionInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputUpdateTaskFieldsInput _$InputUpdateTaskFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateTaskFieldsInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$InputUpdateTaskFieldsInputToJson(
        InputUpdateTaskFieldsInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'text': instance.text,
    };

InputUpdateTaskInput _$InputUpdateTaskInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateTaskInput(
      id: json['id'] as String,
      fields: json['fields'] == null
          ? null
          : InputUpdateTaskFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputUpdateTaskInputToJson(
        InputUpdateTaskInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputUpdateUserFieldsInput _$InputUpdateUserFieldsInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateUserFieldsInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      username: json['username'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      authData: json['authData'] as String?,
      tasks: json['tasks'] == null
          ? null
          : InputTaskRelationInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$InputUpdateUserFieldsInputToJson(
        InputUpdateUserFieldsInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'authData': instance.authData,
      'tasks': instance.tasks?.toJson(),
      'avatar': instance.avatar,
    };

InputUpdateUserInput _$InputUpdateUserInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateUserInput(
      id: json['id'] as String,
      fields: json['fields'] == null
          ? null
          : InputUpdateUserFieldsInput.fromJson(
              json['fields'] as Map<String, dynamic>),
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$InputUpdateUserInputToJson(
        InputUpdateUserInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields?.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

InputUserACLInput _$InputUserACLInputFromJson(Map<String, dynamic> json) =>
    InputUserACLInput(
      userId: json['userId'] as String,
      read: json['read'] as bool,
      write: json['write'] as bool,
    );

Map<String, dynamic> _$InputUserACLInputToJson(InputUserACLInput instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'read': instance.read,
      'write': instance.write,
    };

InputUserLoginWithInput _$InputUserLoginWithInputFromJson(
        Map<String, dynamic> json) =>
    InputUserLoginWithInput(
      ACL: json['ACL'] == null
          ? null
          : InputACLInput.fromJson(json['ACL'] as Map<String, dynamic>),
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      tasks: json['tasks'] == null
          ? null
          : InputTaskRelationInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$InputUserLoginWithInputToJson(
        InputUserLoginWithInput instance) =>
    <String, dynamic>{
      'ACL': instance.ACL?.toJson(),
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'tasks': instance.tasks?.toJson(),
      'avatar': instance.avatar,
    };

InputUserPointerInput _$InputUserPointerInputFromJson(
        Map<String, dynamic> json) =>
    InputUserPointerInput(
      link: json['link'] as String?,
      createAndLink: json['createAndLink'] == null
          ? null
          : InputCreateUserFieldsInput.fromJson(
              json['createAndLink'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUserPointerInputToJson(
        InputUserPointerInput instance) =>
    <String, dynamic>{
      'link': instance.link,
      'createAndLink': instance.createAndLink?.toJson(),
    };

InputUserRelationInput _$InputUserRelationInputFromJson(
        Map<String, dynamic> json) =>
    InputUserRelationInput(
      add: (json['add'] as List<dynamic>?)?.map((e) => e as String).toList(),
      remove:
          (json['remove'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createAndAdd: (json['createAndAdd'] as List<dynamic>?)
          ?.map((e) =>
              InputCreateUserFieldsInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputUserRelationInputToJson(
        InputUserRelationInput instance) =>
    <String, dynamic>{
      'add': instance.add,
      'remove': instance.remove,
      'createAndAdd': instance.createAndAdd?.map((e) => e.toJson()).toList(),
    };

InputUserRelationWhereInput _$InputUserRelationWhereInputFromJson(
        Map<String, dynamic> json) =>
    InputUserRelationWhereInput(
      have: json['have'] == null
          ? null
          : InputUserWhereInput.fromJson(json['have'] as Map<String, dynamic>),
      haveNot: json['haveNot'] == null
          ? null
          : InputUserWhereInput.fromJson(
              json['haveNot'] as Map<String, dynamic>),
      exists: json['exists'] as bool?,
    );

Map<String, dynamic> _$InputUserRelationWhereInputToJson(
        InputUserRelationWhereInput instance) =>
    <String, dynamic>{
      'have': instance.have?.toJson(),
      'haveNot': instance.haveNot?.toJson(),
      'exists': instance.exists,
    };

InputUserWhereInput _$InputUserWhereInputFromJson(Map<String, dynamic> json) =>
    InputUserWhereInput(
      objectId: json['objectId'] == null
          ? null
          : InputIdWhereInput.fromJson(
              json['objectId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : InputDateWhereInput.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      ACL: json['ACL'] == null
          ? null
          : InputObjectWhereInput.fromJson(json['ACL'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : InputStringWhereInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : InputStringWhereInput.fromJson(
              json['password'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : InputStringWhereInput.fromJson(
              json['email'] as Map<String, dynamic>),
      emailVerified: json['emailVerified'] == null
          ? null
          : InputBooleanWhereInput.fromJson(
              json['emailVerified'] as Map<String, dynamic>),
      authData: json['authData'] == null
          ? null
          : InputObjectWhereInput.fromJson(
              json['authData'] as Map<String, dynamic>),
      tasks: json['tasks'] == null
          ? null
          : InputTaskRelationWhereInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
      avatar: json['avatar'] == null
          ? null
          : InputStringWhereInput.fromJson(
              json['avatar'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputIdWhereInput.fromJson(json['id'] as Map<String, dynamic>),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => InputUserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => InputUserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOR: (json['NOR'] as List<dynamic>?)
          ?.map((e) => InputUserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputUserWhereInputToJson(
        InputUserWhereInput instance) =>
    <String, dynamic>{
      'objectId': instance.objectId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'ACL': instance.ACL?.toJson(),
      'username': instance.username?.toJson(),
      'password': instance.password?.toJson(),
      'email': instance.email?.toJson(),
      'emailVerified': instance.emailVerified?.toJson(),
      'authData': instance.authData?.toJson(),
      'tasks': instance.tasks?.toJson(),
      'avatar': instance.avatar?.toJson(),
      'id': instance.id?.toJson(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'NOR': instance.NOR?.map((e) => e.toJson()).toList(),
    };

InputWithinInput _$InputWithinInputFromJson(Map<String, dynamic> json) =>
    InputWithinInput(
      box: InputBoxInput.fromJson(json['box'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputWithinInputToJson(InputWithinInput instance) =>
    <String, dynamic>{
      'box': instance.box.toJson(),
    };
