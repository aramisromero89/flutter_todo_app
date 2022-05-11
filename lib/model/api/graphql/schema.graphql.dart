import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class InputACLInput {
  InputACLInput({this.users, this.roles, this.public});

  @override
  factory InputACLInput.fromJson(Map<String, dynamic> json) =>
      _$InputACLInputFromJson(json);

  final List<InputUserACLInput>? users;

  final List<InputRoleACLInput>? roles;

  final InputPublicACLInput? public;

  Map<String, dynamic> toJson() => _$InputACLInputToJson(this);
  int get hashCode {
    final l$users = users;
    final l$roles = roles;
    final l$public = public;
    return Object.hashAll([
      l$users == null ? null : Object.hashAll(l$users.map((v) => v)),
      l$roles == null ? null : Object.hashAll(l$roles.map((v) => v)),
      l$public
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputACLInput) || runtimeType != other.runtimeType)
      return false;
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != null && lOther$users != null) {
      if (l$users.length != lOther$users.length) return false;
      for (int i = 0; i < l$users.length; i++) {
        final l$users$entry = l$users[i];
        final lOther$users$entry = lOther$users[i];
        if (l$users$entry != lOther$users$entry) return false;
      }
    } else if (l$users != lOther$users) {
      return false;
    }

    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles != null && lOther$roles != null) {
      if (l$roles.length != lOther$roles.length) return false;
      for (int i = 0; i < l$roles.length; i++) {
        final l$roles$entry = l$roles[i];
        final lOther$roles$entry = lOther$roles[i];
        if (l$roles$entry != lOther$roles$entry) return false;
      }
    } else if (l$roles != lOther$roles) {
      return false;
    }

    final l$public = public;
    final lOther$public = other.public;
    if (l$public != lOther$public) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputArrayWhereInput {
  InputArrayWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo,
      this.$in,
      this.notIn,
      this.exists,
      this.containedBy,
      this.contains,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputArrayWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputArrayWhereInputFromJson(json);

  final String? equalTo;

  final String? notEqualTo;

  final String? lessThan;

  final String? lessThanOrEqualTo;

  final String? greaterThan;

  final String? greaterThanOrEqualTo;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final List<String?>? notIn;

  final bool? exists;

  final List<String?>? containedBy;

  final List<String?>? contains;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputArrayWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$exists = exists;
    final l$containedBy = containedBy;
    final l$contains = contains;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll([
      l$equalTo,
      l$notEqualTo,
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$exists,
      l$containedBy == null
          ? null
          : Object.hashAll(l$containedBy.map((v) => v)),
      l$contains == null ? null : Object.hashAll(l$contains.map((v) => v)),
      l$inQueryKey,
      l$notInQueryKey
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputArrayWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$containedBy = containedBy;
    final lOther$containedBy = other.containedBy;
    if (l$containedBy != null && lOther$containedBy != null) {
      if (l$containedBy.length != lOther$containedBy.length) return false;
      for (int i = 0; i < l$containedBy.length; i++) {
        final l$containedBy$entry = l$containedBy[i];
        final lOther$containedBy$entry = lOther$containedBy[i];
        if (l$containedBy$entry != lOther$containedBy$entry) return false;
      }
    } else if (l$containedBy != lOther$containedBy) {
      return false;
    }

    final l$contains = contains;
    final lOther$contains = other.contains;
    if (l$contains != null && lOther$contains != null) {
      if (l$contains.length != lOther$contains.length) return false;
      for (int i = 0; i < l$contains.length; i++) {
        final l$contains$entry = l$contains[i];
        final lOther$contains$entry = lOther$contains[i];
        if (l$contains$entry != lOther$contains$entry) return false;
      }
    } else if (l$contains != lOther$contains) {
      return false;
    }

    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputBooleanWhereInput {
  InputBooleanWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.exists,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputBooleanWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputBooleanWhereInputFromJson(json);

  final bool? equalTo;

  final bool? notEqualTo;

  final bool? exists;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputBooleanWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$exists = exists;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll(
        [l$equalTo, l$notEqualTo, l$exists, l$inQueryKey, l$notInQueryKey]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputBooleanWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputBoxInput {
  InputBoxInput({required this.bottomLeft, required this.upperRight});

  @override
  factory InputBoxInput.fromJson(Map<String, dynamic> json) =>
      _$InputBoxInputFromJson(json);

  final InputGeoPointInput bottomLeft;

  final InputGeoPointInput upperRight;

  Map<String, dynamic> toJson() => _$InputBoxInputToJson(this);
  int get hashCode {
    final l$bottomLeft = bottomLeft;
    final l$upperRight = upperRight;
    return Object.hashAll([l$bottomLeft, l$upperRight]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputBoxInput) || runtimeType != other.runtimeType)
      return false;
    final l$bottomLeft = bottomLeft;
    final lOther$bottomLeft = other.bottomLeft;
    if (l$bottomLeft != lOther$bottomLeft) return false;
    final l$upperRight = upperRight;
    final lOther$upperRight = other.upperRight;
    if (l$upperRight != lOther$upperRight) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputBytesWhereInput {
  InputBytesWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo,
      this.$in,
      this.notIn,
      this.exists,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputBytesWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputBytesWhereInputFromJson(json);

  final String? equalTo;

  final String? notEqualTo;

  final String? lessThan;

  final String? lessThanOrEqualTo;

  final String? greaterThan;

  final String? greaterThanOrEqualTo;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final List<String?>? notIn;

  final bool? exists;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputBytesWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$exists = exists;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll([
      l$equalTo,
      l$notEqualTo,
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$exists,
      l$inQueryKey,
      l$notInQueryKey
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputBytesWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCenterSphereInput {
  InputCenterSphereInput({required this.center, required this.distance});

  @override
  factory InputCenterSphereInput.fromJson(Map<String, dynamic> json) =>
      _$InputCenterSphereInputFromJson(json);

  final InputGeoPointInput center;

  final double distance;

  Map<String, dynamic> toJson() => _$InputCenterSphereInputToJson(this);
  int get hashCode {
    final l$center = center;
    final l$distance = distance;
    return Object.hashAll([l$center, l$distance]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCenterSphereInput) || runtimeType != other.runtimeType)
      return false;
    final l$center = center;
    final lOther$center = other.center;
    if (l$center != lOther$center) return false;
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateClassInput {
  InputCreateClassInput(
      {required this.name, this.schemaFields, this.clientMutationId});

  @override
  factory InputCreateClassInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateClassInputFromJson(json);

  final String name;

  final InputSchemaFieldsInput? schemaFields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputCreateClassInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$schemaFields = schemaFields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$name, l$schemaFields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateClassInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$schemaFields = schemaFields;
    final lOther$schemaFields = other.schemaFields;
    if (l$schemaFields != lOther$schemaFields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateFileInput {
  InputCreateFileInput({required this.upload, this.clientMutationId});

  @override
  factory InputCreateFileInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateFileInputFromJson(json);

  final String upload;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputCreateFileInputToJson(this);
  int get hashCode {
    final l$upload = upload;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$upload, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateFileInput) || runtimeType != other.runtimeType)
      return false;
    final l$upload = upload;
    final lOther$upload = other.upload;
    if (l$upload != lOther$upload) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateRoleFieldsInput {
  InputCreateRoleFieldsInput({this.ACL, this.name, this.users, this.roles});

  @override
  factory InputCreateRoleFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateRoleFieldsInputFromJson(json);

  final InputACLInput? ACL;

  final String? name;

  final InputUserRelationInput? users;

  final InputRoleRelationInput? roles;

  Map<String, dynamic> toJson() => _$InputCreateRoleFieldsInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$name = name;
    final l$users = users;
    final l$roles = roles;
    return Object.hashAll([l$ACL, l$name, l$users, l$roles]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateRoleFieldsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) return false;
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles != lOther$roles) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateRoleInput {
  InputCreateRoleInput({this.fields, this.clientMutationId});

  @override
  factory InputCreateRoleInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateRoleInputFromJson(json);

  final InputCreateRoleFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputCreateRoleInputToJson(this);
  int get hashCode {
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateRoleInput) || runtimeType != other.runtimeType)
      return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateSessionFieldsInput {
  InputCreateSessionFieldsInput(
      {this.ACL,
      this.restricted,
      this.user,
      this.installationId,
      this.sessionToken,
      this.expiresAt,
      this.createdWith});

  @override
  factory InputCreateSessionFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateSessionFieldsInputFromJson(json);

  final InputACLInput? ACL;

  final bool? restricted;

  final InputUserPointerInput? user;

  final String? installationId;

  final String? sessionToken;

  final String? expiresAt;

  final String? createdWith;

  Map<String, dynamic> toJson() => _$InputCreateSessionFieldsInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$restricted = restricted;
    final l$user = user;
    final l$installationId = installationId;
    final l$sessionToken = sessionToken;
    final l$expiresAt = expiresAt;
    final l$createdWith = createdWith;
    return Object.hashAll([
      l$ACL,
      l$restricted,
      l$user,
      l$installationId,
      l$sessionToken,
      l$expiresAt,
      l$createdWith
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateSessionFieldsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$restricted = restricted;
    final lOther$restricted = other.restricted;
    if (l$restricted != lOther$restricted) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$installationId = installationId;
    final lOther$installationId = other.installationId;
    if (l$installationId != lOther$installationId) return false;
    final l$sessionToken = sessionToken;
    final lOther$sessionToken = other.sessionToken;
    if (l$sessionToken != lOther$sessionToken) return false;
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) return false;
    final l$createdWith = createdWith;
    final lOther$createdWith = other.createdWith;
    if (l$createdWith != lOther$createdWith) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateSessionInput {
  InputCreateSessionInput({this.fields, this.clientMutationId});

  @override
  factory InputCreateSessionInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateSessionInputFromJson(json);

  final InputCreateSessionFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputCreateSessionInputToJson(this);
  int get hashCode {
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateSessionInput) || runtimeType != other.runtimeType)
      return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateTaskFieldsInput {
  InputCreateTaskFieldsInput({this.ACL, required this.text});

  @override
  factory InputCreateTaskFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateTaskFieldsInputFromJson(json);

  final InputACLInput? ACL;

  final String text;

  Map<String, dynamic> toJson() => _$InputCreateTaskFieldsInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$text = text;
    return Object.hashAll([l$ACL, l$text]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateTaskFieldsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateTaskInput {
  InputCreateTaskInput({this.fields, this.clientMutationId});

  @override
  factory InputCreateTaskInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateTaskInputFromJson(json);

  final InputCreateTaskFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputCreateTaskInputToJson(this);
  int get hashCode {
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateTaskInput) || runtimeType != other.runtimeType)
      return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateUserFieldsInput {
  InputCreateUserFieldsInput(
      {this.ACL,
      required this.username,
      required this.password,
      this.email,
      this.emailVerified,
      this.authData,
      this.tasks,
      this.avatar});

  @override
  factory InputCreateUserFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateUserFieldsInputFromJson(json);

  final InputACLInput? ACL;

  final String username;

  final String password;

  final String? email;

  final bool? emailVerified;

  final String? authData;

  final InputTaskRelationInput? tasks;

  final String? avatar;

  Map<String, dynamic> toJson() => _$InputCreateUserFieldsInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$username = username;
    final l$password = password;
    final l$email = email;
    final l$emailVerified = emailVerified;
    final l$authData = authData;
    final l$tasks = tasks;
    final l$avatar = avatar;
    return Object.hashAll([
      l$ACL,
      l$username,
      l$password,
      l$email,
      l$emailVerified,
      l$authData,
      l$tasks,
      l$avatar
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateUserFieldsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$emailVerified = emailVerified;
    final lOther$emailVerified = other.emailVerified;
    if (l$emailVerified != lOther$emailVerified) return false;
    final l$authData = authData;
    final lOther$authData = other.authData;
    if (l$authData != lOther$authData) return false;
    final l$tasks = tasks;
    final lOther$tasks = other.tasks;
    if (l$tasks != lOther$tasks) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputCreateUserInput {
  InputCreateUserInput({this.fields, this.clientMutationId});

  @override
  factory InputCreateUserInput.fromJson(Map<String, dynamic> json) =>
      _$InputCreateUserInputFromJson(json);

  final InputCreateUserFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputCreateUserInputToJson(this);
  int get hashCode {
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCreateUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputDateWhereInput {
  InputDateWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo,
      this.$in,
      this.notIn,
      this.exists,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputDateWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputDateWhereInputFromJson(json);

  final String? equalTo;

  final String? notEqualTo;

  final String? lessThan;

  final String? lessThanOrEqualTo;

  final String? greaterThan;

  final String? greaterThanOrEqualTo;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final List<String?>? notIn;

  final bool? exists;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputDateWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$exists = exists;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll([
      l$equalTo,
      l$notEqualTo,
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$exists,
      l$inQueryKey,
      l$notInQueryKey
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputDateWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputDeleteClassInput {
  InputDeleteClassInput({required this.name, this.clientMutationId});

  @override
  factory InputDeleteClassInput.fromJson(Map<String, dynamic> json) =>
      _$InputDeleteClassInputFromJson(json);

  final String name;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputDeleteClassInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$name, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputDeleteClassInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputDeleteRoleInput {
  InputDeleteRoleInput({required this.id, this.clientMutationId});

  @override
  factory InputDeleteRoleInput.fromJson(Map<String, dynamic> json) =>
      _$InputDeleteRoleInputFromJson(json);

  final String id;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputDeleteRoleInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$id, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputDeleteRoleInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputDeleteSessionInput {
  InputDeleteSessionInput({required this.id, this.clientMutationId});

  @override
  factory InputDeleteSessionInput.fromJson(Map<String, dynamic> json) =>
      _$InputDeleteSessionInputFromJson(json);

  final String id;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputDeleteSessionInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$id, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputDeleteSessionInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputDeleteTaskInput {
  InputDeleteTaskInput({required this.id, this.clientMutationId});

  @override
  factory InputDeleteTaskInput.fromJson(Map<String, dynamic> json) =>
      _$InputDeleteTaskInputFromJson(json);

  final String id;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputDeleteTaskInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$id, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputDeleteTaskInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputDeleteUserInput {
  InputDeleteUserInput({required this.id, this.clientMutationId});

  @override
  factory InputDeleteUserInput.fromJson(Map<String, dynamic> json) =>
      _$InputDeleteUserInputFromJson(json);

  final String id;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputDeleteUserInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$id, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputDeleteUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputFileInput {
  InputFileInput({this.file, this.upload, this.unlink});

  @override
  factory InputFileInput.fromJson(Map<String, dynamic> json) =>
      _$InputFileInputFromJson(json);

  final String? file;

  final String? upload;

  final bool? unlink;

  Map<String, dynamic> toJson() => _$InputFileInputToJson(this);
  int get hashCode {
    final l$file = file;
    final l$upload = upload;
    final l$unlink = unlink;
    return Object.hashAll([l$file, l$upload, l$unlink]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputFileInput) || runtimeType != other.runtimeType)
      return false;
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) return false;
    final l$upload = upload;
    final lOther$upload = other.upload;
    if (l$upload != lOther$upload) return false;
    final l$unlink = unlink;
    final lOther$unlink = other.unlink;
    if (l$unlink != lOther$unlink) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputFileWhereInput {
  InputFileWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo,
      this.$in,
      this.notIn,
      this.exists,
      this.matchesRegex,
      this.options,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputFileWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputFileWhereInputFromJson(json);

  final String? equalTo;

  final String? notEqualTo;

  final String? lessThan;

  final String? lessThanOrEqualTo;

  final String? greaterThan;

  final String? greaterThanOrEqualTo;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final List<String?>? notIn;

  final bool? exists;

  final String? matchesRegex;

  final String? options;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputFileWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$exists = exists;
    final l$matchesRegex = matchesRegex;
    final l$options = options;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll([
      l$equalTo,
      l$notEqualTo,
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$exists,
      l$matchesRegex,
      l$options,
      l$inQueryKey,
      l$notInQueryKey
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputFileWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$matchesRegex = matchesRegex;
    final lOther$matchesRegex = other.matchesRegex;
    if (l$matchesRegex != lOther$matchesRegex) return false;
    final l$options = options;
    final lOther$options = other.options;
    if (l$options != lOther$options) return false;
    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputGeoIntersectsInput {
  InputGeoIntersectsInput({this.point});

  @override
  factory InputGeoIntersectsInput.fromJson(Map<String, dynamic> json) =>
      _$InputGeoIntersectsInputFromJson(json);

  final InputGeoPointInput? point;

  Map<String, dynamic> toJson() => _$InputGeoIntersectsInputToJson(this);
  int get hashCode {
    final l$point = point;
    return Object.hashAll([l$point]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGeoIntersectsInput) || runtimeType != other.runtimeType)
      return false;
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputGeoPointInput {
  InputGeoPointInput({required this.latitude, required this.longitude});

  @override
  factory InputGeoPointInput.fromJson(Map<String, dynamic> json) =>
      _$InputGeoPointInputFromJson(json);

  final double latitude;

  final double longitude;

  Map<String, dynamic> toJson() => _$InputGeoPointInputToJson(this);
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([l$latitude, l$longitude]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGeoPointInput) || runtimeType != other.runtimeType)
      return false;
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) return false;
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputGeoPointWhereInput {
  InputGeoPointWhereInput(
      {this.exists,
      this.nearSphere,
      this.maxDistance,
      this.maxDistanceInRadians,
      this.maxDistanceInMiles,
      this.maxDistanceInKilometers,
      this.within,
      this.geoWithin});

  @override
  factory InputGeoPointWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputGeoPointWhereInputFromJson(json);

  final bool? exists;

  final InputGeoPointInput? nearSphere;

  final double? maxDistance;

  final double? maxDistanceInRadians;

  final double? maxDistanceInMiles;

  final double? maxDistanceInKilometers;

  final InputWithinInput? within;

  final InputGeoWithinInput? geoWithin;

  Map<String, dynamic> toJson() => _$InputGeoPointWhereInputToJson(this);
  int get hashCode {
    final l$exists = exists;
    final l$nearSphere = nearSphere;
    final l$maxDistance = maxDistance;
    final l$maxDistanceInRadians = maxDistanceInRadians;
    final l$maxDistanceInMiles = maxDistanceInMiles;
    final l$maxDistanceInKilometers = maxDistanceInKilometers;
    final l$within = within;
    final l$geoWithin = geoWithin;
    return Object.hashAll([
      l$exists,
      l$nearSphere,
      l$maxDistance,
      l$maxDistanceInRadians,
      l$maxDistanceInMiles,
      l$maxDistanceInKilometers,
      l$within,
      l$geoWithin
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGeoPointWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$nearSphere = nearSphere;
    final lOther$nearSphere = other.nearSphere;
    if (l$nearSphere != lOther$nearSphere) return false;
    final l$maxDistance = maxDistance;
    final lOther$maxDistance = other.maxDistance;
    if (l$maxDistance != lOther$maxDistance) return false;
    final l$maxDistanceInRadians = maxDistanceInRadians;
    final lOther$maxDistanceInRadians = other.maxDistanceInRadians;
    if (l$maxDistanceInRadians != lOther$maxDistanceInRadians) return false;
    final l$maxDistanceInMiles = maxDistanceInMiles;
    final lOther$maxDistanceInMiles = other.maxDistanceInMiles;
    if (l$maxDistanceInMiles != lOther$maxDistanceInMiles) return false;
    final l$maxDistanceInKilometers = maxDistanceInKilometers;
    final lOther$maxDistanceInKilometers = other.maxDistanceInKilometers;
    if (l$maxDistanceInKilometers != lOther$maxDistanceInKilometers)
      return false;
    final l$within = within;
    final lOther$within = other.within;
    if (l$within != lOther$within) return false;
    final l$geoWithin = geoWithin;
    final lOther$geoWithin = other.geoWithin;
    if (l$geoWithin != lOther$geoWithin) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputGeoWithinInput {
  InputGeoWithinInput({this.polygon, this.centerSphere});

  @override
  factory InputGeoWithinInput.fromJson(Map<String, dynamic> json) =>
      _$InputGeoWithinInputFromJson(json);

  final List<InputGeoPointInput>? polygon;

  final InputCenterSphereInput? centerSphere;

  Map<String, dynamic> toJson() => _$InputGeoWithinInputToJson(this);
  int get hashCode {
    final l$polygon = polygon;
    final l$centerSphere = centerSphere;
    return Object.hashAll([
      l$polygon == null ? null : Object.hashAll(l$polygon.map((v) => v)),
      l$centerSphere
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGeoWithinInput) || runtimeType != other.runtimeType)
      return false;
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (l$polygon != null && lOther$polygon != null) {
      if (l$polygon.length != lOther$polygon.length) return false;
      for (int i = 0; i < l$polygon.length; i++) {
        final l$polygon$entry = l$polygon[i];
        final lOther$polygon$entry = lOther$polygon[i];
        if (l$polygon$entry != lOther$polygon$entry) return false;
      }
    } else if (l$polygon != lOther$polygon) {
      return false;
    }

    final l$centerSphere = centerSphere;
    final lOther$centerSphere = other.centerSphere;
    if (l$centerSphere != lOther$centerSphere) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputIdWhereInput {
  InputIdWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo,
      this.$in,
      this.notIn,
      this.exists,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputIdWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputIdWhereInputFromJson(json);

  final String? equalTo;

  final String? notEqualTo;

  final String? lessThan;

  final String? lessThanOrEqualTo;

  final String? greaterThan;

  final String? greaterThanOrEqualTo;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final List<String?>? notIn;

  final bool? exists;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputIdWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$exists = exists;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll([
      l$equalTo,
      l$notEqualTo,
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$exists,
      l$inQueryKey,
      l$notInQueryKey
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputIdWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputKeyValueInput {
  InputKeyValueInput({required this.key, required this.value});

  @override
  factory InputKeyValueInput.fromJson(Map<String, dynamic> json) =>
      _$InputKeyValueInputFromJson(json);

  final String key;

  final String value;

  Map<String, dynamic> toJson() => _$InputKeyValueInputToJson(this);
  int get hashCode {
    final l$key = key;
    final l$value = value;
    return Object.hashAll([l$key, l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputKeyValueInput) || runtimeType != other.runtimeType)
      return false;
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputLogInInput {
  InputLogInInput(
      {required this.username, required this.password, this.clientMutationId});

  @override
  factory InputLogInInput.fromJson(Map<String, dynamic> json) =>
      _$InputLogInInputFromJson(json);

  final String username;

  final String password;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputLogInInputToJson(this);
  int get hashCode {
    final l$username = username;
    final l$password = password;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$username, l$password, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputLogInInput) || runtimeType != other.runtimeType)
      return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputLogInWithInput {
  InputLogInWithInput(
      {required this.authData, this.fields, this.clientMutationId});

  @override
  factory InputLogInWithInput.fromJson(Map<String, dynamic> json) =>
      _$InputLogInWithInputFromJson(json);

  final String authData;

  final InputUserLoginWithInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputLogInWithInputToJson(this);
  int get hashCode {
    final l$authData = authData;
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$authData, l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputLogInWithInput) || runtimeType != other.runtimeType)
      return false;
    final l$authData = authData;
    final lOther$authData = other.authData;
    if (l$authData != lOther$authData) return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputLogOutInput {
  InputLogOutInput({this.clientMutationId});

  @override
  factory InputLogOutInput.fromJson(Map<String, dynamic> json) =>
      _$InputLogOutInputFromJson(json);

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputLogOutInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputLogOutInput) || runtimeType != other.runtimeType)
      return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputNumberWhereInput {
  InputNumberWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo,
      this.$in,
      this.notIn,
      this.exists,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputNumberWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputNumberWhereInputFromJson(json);

  final double? equalTo;

  final double? notEqualTo;

  final double? lessThan;

  final double? lessThanOrEqualTo;

  final double? greaterThan;

  final double? greaterThanOrEqualTo;

  @JsonKey(name: 'in')
  final List<double?>? $in;

  final List<double?>? notIn;

  final bool? exists;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputNumberWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$exists = exists;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll([
      l$equalTo,
      l$notEqualTo,
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$exists,
      l$inQueryKey,
      l$notInQueryKey
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputNumberWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputObjectWhereInput {
  InputObjectWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.$in,
      this.notIn,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo,
      this.exists,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputObjectWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputObjectWhereInputFromJson(json);

  final InputKeyValueInput? equalTo;

  final InputKeyValueInput? notEqualTo;

  @JsonKey(name: 'in')
  final List<InputKeyValueInput?>? $in;

  final List<InputKeyValueInput?>? notIn;

  final InputKeyValueInput? lessThan;

  final InputKeyValueInput? lessThanOrEqualTo;

  final InputKeyValueInput? greaterThan;

  final InputKeyValueInput? greaterThanOrEqualTo;

  final bool? exists;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputObjectWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final l$exists = exists;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll([
      l$equalTo,
      l$notEqualTo,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo,
      l$exists,
      l$inQueryKey,
      l$notInQueryKey
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputObjectWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputPointerFieldInput {
  InputPointerFieldInput({required this.name, required this.targetClassName});

  @override
  factory InputPointerFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputPointerFieldInputFromJson(json);

  final String name;

  final String targetClassName;

  Map<String, dynamic> toJson() => _$InputPointerFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$targetClassName = targetClassName;
    return Object.hashAll([l$name, l$targetClassName]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputPointerFieldInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$targetClassName = targetClassName;
    final lOther$targetClassName = other.targetClassName;
    if (l$targetClassName != lOther$targetClassName) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputPolygonWhereInput {
  InputPolygonWhereInput({this.exists, this.geoIntersects});

  @override
  factory InputPolygonWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputPolygonWhereInputFromJson(json);

  final bool? exists;

  final InputGeoIntersectsInput? geoIntersects;

  Map<String, dynamic> toJson() => _$InputPolygonWhereInputToJson(this);
  int get hashCode {
    final l$exists = exists;
    final l$geoIntersects = geoIntersects;
    return Object.hashAll([l$exists, l$geoIntersects]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputPolygonWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$geoIntersects = geoIntersects;
    final lOther$geoIntersects = other.geoIntersects;
    if (l$geoIntersects != lOther$geoIntersects) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputPublicACLInput {
  InputPublicACLInput({required this.read, required this.write});

  @override
  factory InputPublicACLInput.fromJson(Map<String, dynamic> json) =>
      _$InputPublicACLInputFromJson(json);

  final bool read;

  final bool write;

  Map<String, dynamic> toJson() => _$InputPublicACLInputToJson(this);
  int get hashCode {
    final l$read = read;
    final l$write = write;
    return Object.hashAll([l$read, l$write]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputPublicACLInput) || runtimeType != other.runtimeType)
      return false;
    final l$read = read;
    final lOther$read = other.read;
    if (l$read != lOther$read) return false;
    final l$write = write;
    final lOther$write = other.write;
    if (l$write != lOther$write) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputReadOptionsInput {
  InputReadOptionsInput(
      {this.readPreference,
      this.includeReadPreference,
      this.subqueryReadPreference});

  @override
  factory InputReadOptionsInput.fromJson(Map<String, dynamic> json) =>
      _$InputReadOptionsInputFromJson(json);

  @JsonKey(unknownEnumValue: EnumReadPreference.$unknown)
  final EnumReadPreference? readPreference;

  @JsonKey(unknownEnumValue: EnumReadPreference.$unknown)
  final EnumReadPreference? includeReadPreference;

  @JsonKey(unknownEnumValue: EnumReadPreference.$unknown)
  final EnumReadPreference? subqueryReadPreference;

  Map<String, dynamic> toJson() => _$InputReadOptionsInputToJson(this);
  int get hashCode {
    final l$readPreference = readPreference;
    final l$includeReadPreference = includeReadPreference;
    final l$subqueryReadPreference = subqueryReadPreference;
    return Object.hashAll(
        [l$readPreference, l$includeReadPreference, l$subqueryReadPreference]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputReadOptionsInput) || runtimeType != other.runtimeType)
      return false;
    final l$readPreference = readPreference;
    final lOther$readPreference = other.readPreference;
    if (l$readPreference != lOther$readPreference) return false;
    final l$includeReadPreference = includeReadPreference;
    final lOther$includeReadPreference = other.includeReadPreference;
    if (l$includeReadPreference != lOther$includeReadPreference) return false;
    final l$subqueryReadPreference = subqueryReadPreference;
    final lOther$subqueryReadPreference = other.subqueryReadPreference;
    if (l$subqueryReadPreference != lOther$subqueryReadPreference) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputRelationFieldInput {
  InputRelationFieldInput({required this.name, required this.targetClassName});

  @override
  factory InputRelationFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputRelationFieldInputFromJson(json);

  final String name;

  final String targetClassName;

  Map<String, dynamic> toJson() => _$InputRelationFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$targetClassName = targetClassName;
    return Object.hashAll([l$name, l$targetClassName]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRelationFieldInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$targetClassName = targetClassName;
    final lOther$targetClassName = other.targetClassName;
    if (l$targetClassName != lOther$targetClassName) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputResetPasswordInput {
  InputResetPasswordInput({required this.email, this.clientMutationId});

  @override
  factory InputResetPasswordInput.fromJson(Map<String, dynamic> json) =>
      _$InputResetPasswordInputFromJson(json);

  final String email;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputResetPasswordInputToJson(this);
  int get hashCode {
    final l$email = email;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$email, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputResetPasswordInput) || runtimeType != other.runtimeType)
      return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputRoleACLInput {
  InputRoleACLInput(
      {required this.roleName, required this.read, required this.write});

  @override
  factory InputRoleACLInput.fromJson(Map<String, dynamic> json) =>
      _$InputRoleACLInputFromJson(json);

  final String roleName;

  final bool read;

  final bool write;

  Map<String, dynamic> toJson() => _$InputRoleACLInputToJson(this);
  int get hashCode {
    final l$roleName = roleName;
    final l$read = read;
    final l$write = write;
    return Object.hashAll([l$roleName, l$read, l$write]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRoleACLInput) || runtimeType != other.runtimeType)
      return false;
    final l$roleName = roleName;
    final lOther$roleName = other.roleName;
    if (l$roleName != lOther$roleName) return false;
    final l$read = read;
    final lOther$read = other.read;
    if (l$read != lOther$read) return false;
    final l$write = write;
    final lOther$write = other.write;
    if (l$write != lOther$write) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputRolePointerInput {
  InputRolePointerInput({this.link, this.createAndLink});

  @override
  factory InputRolePointerInput.fromJson(Map<String, dynamic> json) =>
      _$InputRolePointerInputFromJson(json);

  final String? link;

  final InputCreateRoleFieldsInput? createAndLink;

  Map<String, dynamic> toJson() => _$InputRolePointerInputToJson(this);
  int get hashCode {
    final l$link = link;
    final l$createAndLink = createAndLink;
    return Object.hashAll([l$link, l$createAndLink]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRolePointerInput) || runtimeType != other.runtimeType)
      return false;
    final l$link = link;
    final lOther$link = other.link;
    if (l$link != lOther$link) return false;
    final l$createAndLink = createAndLink;
    final lOther$createAndLink = other.createAndLink;
    if (l$createAndLink != lOther$createAndLink) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputRoleRelationInput {
  InputRoleRelationInput({this.add, this.remove, this.createAndAdd});

  @override
  factory InputRoleRelationInput.fromJson(Map<String, dynamic> json) =>
      _$InputRoleRelationInputFromJson(json);

  final List<String>? add;

  final List<String>? remove;

  final List<InputCreateRoleFieldsInput>? createAndAdd;

  Map<String, dynamic> toJson() => _$InputRoleRelationInputToJson(this);
  int get hashCode {
    final l$add = add;
    final l$remove = remove;
    final l$createAndAdd = createAndAdd;
    return Object.hashAll([
      l$add == null ? null : Object.hashAll(l$add.map((v) => v)),
      l$remove == null ? null : Object.hashAll(l$remove.map((v) => v)),
      l$createAndAdd == null
          ? null
          : Object.hashAll(l$createAndAdd.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRoleRelationInput) || runtimeType != other.runtimeType)
      return false;
    final l$add = add;
    final lOther$add = other.add;
    if (l$add != null && lOther$add != null) {
      if (l$add.length != lOther$add.length) return false;
      for (int i = 0; i < l$add.length; i++) {
        final l$add$entry = l$add[i];
        final lOther$add$entry = lOther$add[i];
        if (l$add$entry != lOther$add$entry) return false;
      }
    } else if (l$add != lOther$add) {
      return false;
    }

    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != null && lOther$remove != null) {
      if (l$remove.length != lOther$remove.length) return false;
      for (int i = 0; i < l$remove.length; i++) {
        final l$remove$entry = l$remove[i];
        final lOther$remove$entry = lOther$remove[i];
        if (l$remove$entry != lOther$remove$entry) return false;
      }
    } else if (l$remove != lOther$remove) {
      return false;
    }

    final l$createAndAdd = createAndAdd;
    final lOther$createAndAdd = other.createAndAdd;
    if (l$createAndAdd != null && lOther$createAndAdd != null) {
      if (l$createAndAdd.length != lOther$createAndAdd.length) return false;
      for (int i = 0; i < l$createAndAdd.length; i++) {
        final l$createAndAdd$entry = l$createAndAdd[i];
        final lOther$createAndAdd$entry = lOther$createAndAdd[i];
        if (l$createAndAdd$entry != lOther$createAndAdd$entry) return false;
      }
    } else if (l$createAndAdd != lOther$createAndAdd) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputRoleRelationWhereInput {
  InputRoleRelationWhereInput({this.have, this.haveNot, this.exists});

  @override
  factory InputRoleRelationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputRoleRelationWhereInputFromJson(json);

  final InputRoleWhereInput? have;

  final InputRoleWhereInput? haveNot;

  final bool? exists;

  Map<String, dynamic> toJson() => _$InputRoleRelationWhereInputToJson(this);
  int get hashCode {
    final l$have = have;
    final l$haveNot = haveNot;
    final l$exists = exists;
    return Object.hashAll([l$have, l$haveNot, l$exists]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRoleRelationWhereInput) ||
        runtimeType != other.runtimeType) return false;
    final l$have = have;
    final lOther$have = other.have;
    if (l$have != lOther$have) return false;
    final l$haveNot = haveNot;
    final lOther$haveNot = other.haveNot;
    if (l$haveNot != lOther$haveNot) return false;
    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputRoleWhereInput {
  InputRoleWhereInput(
      {this.objectId,
      this.createdAt,
      this.updatedAt,
      this.ACL,
      this.name,
      this.users,
      this.roles,
      this.id,
      this.OR,
      this.AND,
      this.NOR});

  @override
  factory InputRoleWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputRoleWhereInputFromJson(json);

  final InputIdWhereInput? objectId;

  final InputDateWhereInput? createdAt;

  final InputDateWhereInput? updatedAt;

  final InputObjectWhereInput? ACL;

  final InputStringWhereInput? name;

  final InputUserRelationWhereInput? users;

  final InputRoleRelationWhereInput? roles;

  final InputIdWhereInput? id;

  final List<InputRoleWhereInput>? OR;

  final List<InputRoleWhereInput>? AND;

  final List<InputRoleWhereInput>? NOR;

  Map<String, dynamic> toJson() => _$InputRoleWhereInputToJson(this);
  int get hashCode {
    final l$objectId = objectId;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$ACL = ACL;
    final l$name = name;
    final l$users = users;
    final l$roles = roles;
    final l$id = id;
    final l$OR = OR;
    final l$AND = AND;
    final l$NOR = NOR;
    return Object.hashAll([
      l$objectId,
      l$createdAt,
      l$updatedAt,
      l$ACL,
      l$name,
      l$users,
      l$roles,
      l$id,
      l$OR == null ? null : Object.hashAll(l$OR.map((v) => v)),
      l$AND == null ? null : Object.hashAll(l$AND.map((v) => v)),
      l$NOR == null ? null : Object.hashAll(l$NOR.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRoleWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$objectId = objectId;
    final lOther$objectId = other.objectId;
    if (l$objectId != lOther$objectId) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) return false;
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles != lOther$roles) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) return false;
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) return false;
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }

    final l$AND = AND;
    final lOther$AND = other.AND;
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) return false;
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) return false;
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }

    final l$NOR = NOR;
    final lOther$NOR = other.NOR;
    if (l$NOR != null && lOther$NOR != null) {
      if (l$NOR.length != lOther$NOR.length) return false;
      for (int i = 0; i < l$NOR.length; i++) {
        final l$NOR$entry = l$NOR[i];
        final lOther$NOR$entry = lOther$NOR[i];
        if (l$NOR$entry != lOther$NOR$entry) return false;
      }
    } else if (l$NOR != lOther$NOR) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaArrayFieldInput {
  InputSchemaArrayFieldInput({required this.name});

  @override
  factory InputSchemaArrayFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaArrayFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaArrayFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaArrayFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaBooleanFieldInput {
  InputSchemaBooleanFieldInput({required this.name});

  @override
  factory InputSchemaBooleanFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaBooleanFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaBooleanFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaBooleanFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaBytesFieldInput {
  InputSchemaBytesFieldInput({required this.name});

  @override
  factory InputSchemaBytesFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaBytesFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaBytesFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaBytesFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaDateFieldInput {
  InputSchemaDateFieldInput({required this.name});

  @override
  factory InputSchemaDateFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaDateFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaDateFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaDateFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaFieldInput {
  InputSchemaFieldInput({required this.name});

  @override
  factory InputSchemaFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaFieldInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaFieldsInput {
  InputSchemaFieldsInput(
      {this.addStrings,
      this.addNumbers,
      this.addBooleans,
      this.addArrays,
      this.addObjects,
      this.addDates,
      this.addFiles,
      this.addGeoPoint,
      this.addPolygons,
      this.addBytes,
      this.addPointers,
      this.addRelations,
      this.remove});

  @override
  factory InputSchemaFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaFieldsInputFromJson(json);

  final List<InputSchemaStringFieldInput>? addStrings;

  final List<InputSchemaNumberFieldInput>? addNumbers;

  final List<InputSchemaBooleanFieldInput>? addBooleans;

  final List<InputSchemaArrayFieldInput>? addArrays;

  final List<InputSchemaObjectFieldInput>? addObjects;

  final List<InputSchemaDateFieldInput>? addDates;

  final List<InputSchemaFileFieldInput>? addFiles;

  final InputSchemaGeoPointFieldInput? addGeoPoint;

  final List<InputSchemaPolygonFieldInput>? addPolygons;

  final List<InputSchemaBytesFieldInput>? addBytes;

  final List<InputPointerFieldInput>? addPointers;

  final List<InputRelationFieldInput>? addRelations;

  final List<InputSchemaFieldInput>? remove;

  Map<String, dynamic> toJson() => _$InputSchemaFieldsInputToJson(this);
  int get hashCode {
    final l$addStrings = addStrings;
    final l$addNumbers = addNumbers;
    final l$addBooleans = addBooleans;
    final l$addArrays = addArrays;
    final l$addObjects = addObjects;
    final l$addDates = addDates;
    final l$addFiles = addFiles;
    final l$addGeoPoint = addGeoPoint;
    final l$addPolygons = addPolygons;
    final l$addBytes = addBytes;
    final l$addPointers = addPointers;
    final l$addRelations = addRelations;
    final l$remove = remove;
    return Object.hashAll([
      l$addStrings == null ? null : Object.hashAll(l$addStrings.map((v) => v)),
      l$addNumbers == null ? null : Object.hashAll(l$addNumbers.map((v) => v)),
      l$addBooleans == null
          ? null
          : Object.hashAll(l$addBooleans.map((v) => v)),
      l$addArrays == null ? null : Object.hashAll(l$addArrays.map((v) => v)),
      l$addObjects == null ? null : Object.hashAll(l$addObjects.map((v) => v)),
      l$addDates == null ? null : Object.hashAll(l$addDates.map((v) => v)),
      l$addFiles == null ? null : Object.hashAll(l$addFiles.map((v) => v)),
      l$addGeoPoint,
      l$addPolygons == null
          ? null
          : Object.hashAll(l$addPolygons.map((v) => v)),
      l$addBytes == null ? null : Object.hashAll(l$addBytes.map((v) => v)),
      l$addPointers == null
          ? null
          : Object.hashAll(l$addPointers.map((v) => v)),
      l$addRelations == null
          ? null
          : Object.hashAll(l$addRelations.map((v) => v)),
      l$remove == null ? null : Object.hashAll(l$remove.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaFieldsInput) || runtimeType != other.runtimeType)
      return false;
    final l$addStrings = addStrings;
    final lOther$addStrings = other.addStrings;
    if (l$addStrings != null && lOther$addStrings != null) {
      if (l$addStrings.length != lOther$addStrings.length) return false;
      for (int i = 0; i < l$addStrings.length; i++) {
        final l$addStrings$entry = l$addStrings[i];
        final lOther$addStrings$entry = lOther$addStrings[i];
        if (l$addStrings$entry != lOther$addStrings$entry) return false;
      }
    } else if (l$addStrings != lOther$addStrings) {
      return false;
    }

    final l$addNumbers = addNumbers;
    final lOther$addNumbers = other.addNumbers;
    if (l$addNumbers != null && lOther$addNumbers != null) {
      if (l$addNumbers.length != lOther$addNumbers.length) return false;
      for (int i = 0; i < l$addNumbers.length; i++) {
        final l$addNumbers$entry = l$addNumbers[i];
        final lOther$addNumbers$entry = lOther$addNumbers[i];
        if (l$addNumbers$entry != lOther$addNumbers$entry) return false;
      }
    } else if (l$addNumbers != lOther$addNumbers) {
      return false;
    }

    final l$addBooleans = addBooleans;
    final lOther$addBooleans = other.addBooleans;
    if (l$addBooleans != null && lOther$addBooleans != null) {
      if (l$addBooleans.length != lOther$addBooleans.length) return false;
      for (int i = 0; i < l$addBooleans.length; i++) {
        final l$addBooleans$entry = l$addBooleans[i];
        final lOther$addBooleans$entry = lOther$addBooleans[i];
        if (l$addBooleans$entry != lOther$addBooleans$entry) return false;
      }
    } else if (l$addBooleans != lOther$addBooleans) {
      return false;
    }

    final l$addArrays = addArrays;
    final lOther$addArrays = other.addArrays;
    if (l$addArrays != null && lOther$addArrays != null) {
      if (l$addArrays.length != lOther$addArrays.length) return false;
      for (int i = 0; i < l$addArrays.length; i++) {
        final l$addArrays$entry = l$addArrays[i];
        final lOther$addArrays$entry = lOther$addArrays[i];
        if (l$addArrays$entry != lOther$addArrays$entry) return false;
      }
    } else if (l$addArrays != lOther$addArrays) {
      return false;
    }

    final l$addObjects = addObjects;
    final lOther$addObjects = other.addObjects;
    if (l$addObjects != null && lOther$addObjects != null) {
      if (l$addObjects.length != lOther$addObjects.length) return false;
      for (int i = 0; i < l$addObjects.length; i++) {
        final l$addObjects$entry = l$addObjects[i];
        final lOther$addObjects$entry = lOther$addObjects[i];
        if (l$addObjects$entry != lOther$addObjects$entry) return false;
      }
    } else if (l$addObjects != lOther$addObjects) {
      return false;
    }

    final l$addDates = addDates;
    final lOther$addDates = other.addDates;
    if (l$addDates != null && lOther$addDates != null) {
      if (l$addDates.length != lOther$addDates.length) return false;
      for (int i = 0; i < l$addDates.length; i++) {
        final l$addDates$entry = l$addDates[i];
        final lOther$addDates$entry = lOther$addDates[i];
        if (l$addDates$entry != lOther$addDates$entry) return false;
      }
    } else if (l$addDates != lOther$addDates) {
      return false;
    }

    final l$addFiles = addFiles;
    final lOther$addFiles = other.addFiles;
    if (l$addFiles != null && lOther$addFiles != null) {
      if (l$addFiles.length != lOther$addFiles.length) return false;
      for (int i = 0; i < l$addFiles.length; i++) {
        final l$addFiles$entry = l$addFiles[i];
        final lOther$addFiles$entry = lOther$addFiles[i];
        if (l$addFiles$entry != lOther$addFiles$entry) return false;
      }
    } else if (l$addFiles != lOther$addFiles) {
      return false;
    }

    final l$addGeoPoint = addGeoPoint;
    final lOther$addGeoPoint = other.addGeoPoint;
    if (l$addGeoPoint != lOther$addGeoPoint) return false;
    final l$addPolygons = addPolygons;
    final lOther$addPolygons = other.addPolygons;
    if (l$addPolygons != null && lOther$addPolygons != null) {
      if (l$addPolygons.length != lOther$addPolygons.length) return false;
      for (int i = 0; i < l$addPolygons.length; i++) {
        final l$addPolygons$entry = l$addPolygons[i];
        final lOther$addPolygons$entry = lOther$addPolygons[i];
        if (l$addPolygons$entry != lOther$addPolygons$entry) return false;
      }
    } else if (l$addPolygons != lOther$addPolygons) {
      return false;
    }

    final l$addBytes = addBytes;
    final lOther$addBytes = other.addBytes;
    if (l$addBytes != null && lOther$addBytes != null) {
      if (l$addBytes.length != lOther$addBytes.length) return false;
      for (int i = 0; i < l$addBytes.length; i++) {
        final l$addBytes$entry = l$addBytes[i];
        final lOther$addBytes$entry = lOther$addBytes[i];
        if (l$addBytes$entry != lOther$addBytes$entry) return false;
      }
    } else if (l$addBytes != lOther$addBytes) {
      return false;
    }

    final l$addPointers = addPointers;
    final lOther$addPointers = other.addPointers;
    if (l$addPointers != null && lOther$addPointers != null) {
      if (l$addPointers.length != lOther$addPointers.length) return false;
      for (int i = 0; i < l$addPointers.length; i++) {
        final l$addPointers$entry = l$addPointers[i];
        final lOther$addPointers$entry = lOther$addPointers[i];
        if (l$addPointers$entry != lOther$addPointers$entry) return false;
      }
    } else if (l$addPointers != lOther$addPointers) {
      return false;
    }

    final l$addRelations = addRelations;
    final lOther$addRelations = other.addRelations;
    if (l$addRelations != null && lOther$addRelations != null) {
      if (l$addRelations.length != lOther$addRelations.length) return false;
      for (int i = 0; i < l$addRelations.length; i++) {
        final l$addRelations$entry = l$addRelations[i];
        final lOther$addRelations$entry = lOther$addRelations[i];
        if (l$addRelations$entry != lOther$addRelations$entry) return false;
      }
    } else if (l$addRelations != lOther$addRelations) {
      return false;
    }

    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != null && lOther$remove != null) {
      if (l$remove.length != lOther$remove.length) return false;
      for (int i = 0; i < l$remove.length; i++) {
        final l$remove$entry = l$remove[i];
        final lOther$remove$entry = lOther$remove[i];
        if (l$remove$entry != lOther$remove$entry) return false;
      }
    } else if (l$remove != lOther$remove) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaFileFieldInput {
  InputSchemaFileFieldInput({required this.name});

  @override
  factory InputSchemaFileFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaFileFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaFileFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaFileFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaGeoPointFieldInput {
  InputSchemaGeoPointFieldInput({required this.name});

  @override
  factory InputSchemaGeoPointFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaGeoPointFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaGeoPointFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaGeoPointFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaNumberFieldInput {
  InputSchemaNumberFieldInput({required this.name});

  @override
  factory InputSchemaNumberFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaNumberFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaNumberFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaNumberFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaObjectFieldInput {
  InputSchemaObjectFieldInput({required this.name});

  @override
  factory InputSchemaObjectFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaObjectFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaObjectFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaObjectFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaPolygonFieldInput {
  InputSchemaPolygonFieldInput({required this.name});

  @override
  factory InputSchemaPolygonFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaPolygonFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaPolygonFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaPolygonFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSchemaStringFieldInput {
  InputSchemaStringFieldInput({required this.name});

  @override
  factory InputSchemaStringFieldInput.fromJson(Map<String, dynamic> json) =>
      _$InputSchemaStringFieldInputFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$InputSchemaStringFieldInputToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSchemaStringFieldInput) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSearchInput {
  InputSearchInput(
      {required this.term,
      this.language,
      this.caseSensitive,
      this.diacriticSensitive});

  @override
  factory InputSearchInput.fromJson(Map<String, dynamic> json) =>
      _$InputSearchInputFromJson(json);

  final String term;

  final String? language;

  final bool? caseSensitive;

  final bool? diacriticSensitive;

  Map<String, dynamic> toJson() => _$InputSearchInputToJson(this);
  int get hashCode {
    final l$term = term;
    final l$language = language;
    final l$caseSensitive = caseSensitive;
    final l$diacriticSensitive = diacriticSensitive;
    return Object.hashAll(
        [l$term, l$language, l$caseSensitive, l$diacriticSensitive]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSearchInput) || runtimeType != other.runtimeType)
      return false;
    final l$term = term;
    final lOther$term = other.term;
    if (l$term != lOther$term) return false;
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) return false;
    final l$caseSensitive = caseSensitive;
    final lOther$caseSensitive = other.caseSensitive;
    if (l$caseSensitive != lOther$caseSensitive) return false;
    final l$diacriticSensitive = diacriticSensitive;
    final lOther$diacriticSensitive = other.diacriticSensitive;
    if (l$diacriticSensitive != lOther$diacriticSensitive) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSelectInput {
  InputSelectInput({required this.query, required this.key});

  @override
  factory InputSelectInput.fromJson(Map<String, dynamic> json) =>
      _$InputSelectInputFromJson(json);

  final InputSubqueryInput query;

  final String key;

  Map<String, dynamic> toJson() => _$InputSelectInputToJson(this);
  int get hashCode {
    final l$query = query;
    final l$key = key;
    return Object.hashAll([l$query, l$key]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSelectInput) || runtimeType != other.runtimeType)
      return false;
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) return false;
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSendVerificationEmailInput {
  InputSendVerificationEmailInput({required this.email, this.clientMutationId});

  @override
  factory InputSendVerificationEmailInput.fromJson(Map<String, dynamic> json) =>
      _$InputSendVerificationEmailInputFromJson(json);

  final String email;

  final String? clientMutationId;

  Map<String, dynamic> toJson() =>
      _$InputSendVerificationEmailInputToJson(this);
  int get hashCode {
    final l$email = email;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$email, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSendVerificationEmailInput) ||
        runtimeType != other.runtimeType) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSessionPointerInput {
  InputSessionPointerInput({this.link, this.createAndLink});

  @override
  factory InputSessionPointerInput.fromJson(Map<String, dynamic> json) =>
      _$InputSessionPointerInputFromJson(json);

  final String? link;

  final InputCreateSessionFieldsInput? createAndLink;

  Map<String, dynamic> toJson() => _$InputSessionPointerInputToJson(this);
  int get hashCode {
    final l$link = link;
    final l$createAndLink = createAndLink;
    return Object.hashAll([l$link, l$createAndLink]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSessionPointerInput) ||
        runtimeType != other.runtimeType) return false;
    final l$link = link;
    final lOther$link = other.link;
    if (l$link != lOther$link) return false;
    final l$createAndLink = createAndLink;
    final lOther$createAndLink = other.createAndLink;
    if (l$createAndLink != lOther$createAndLink) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSessionRelationInput {
  InputSessionRelationInput({this.add, this.remove, this.createAndAdd});

  @override
  factory InputSessionRelationInput.fromJson(Map<String, dynamic> json) =>
      _$InputSessionRelationInputFromJson(json);

  final List<String>? add;

  final List<String>? remove;

  final List<InputCreateSessionFieldsInput>? createAndAdd;

  Map<String, dynamic> toJson() => _$InputSessionRelationInputToJson(this);
  int get hashCode {
    final l$add = add;
    final l$remove = remove;
    final l$createAndAdd = createAndAdd;
    return Object.hashAll([
      l$add == null ? null : Object.hashAll(l$add.map((v) => v)),
      l$remove == null ? null : Object.hashAll(l$remove.map((v) => v)),
      l$createAndAdd == null
          ? null
          : Object.hashAll(l$createAndAdd.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSessionRelationInput) ||
        runtimeType != other.runtimeType) return false;
    final l$add = add;
    final lOther$add = other.add;
    if (l$add != null && lOther$add != null) {
      if (l$add.length != lOther$add.length) return false;
      for (int i = 0; i < l$add.length; i++) {
        final l$add$entry = l$add[i];
        final lOther$add$entry = lOther$add[i];
        if (l$add$entry != lOther$add$entry) return false;
      }
    } else if (l$add != lOther$add) {
      return false;
    }

    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != null && lOther$remove != null) {
      if (l$remove.length != lOther$remove.length) return false;
      for (int i = 0; i < l$remove.length; i++) {
        final l$remove$entry = l$remove[i];
        final lOther$remove$entry = lOther$remove[i];
        if (l$remove$entry != lOther$remove$entry) return false;
      }
    } else if (l$remove != lOther$remove) {
      return false;
    }

    final l$createAndAdd = createAndAdd;
    final lOther$createAndAdd = other.createAndAdd;
    if (l$createAndAdd != null && lOther$createAndAdd != null) {
      if (l$createAndAdd.length != lOther$createAndAdd.length) return false;
      for (int i = 0; i < l$createAndAdd.length; i++) {
        final l$createAndAdd$entry = l$createAndAdd[i];
        final lOther$createAndAdd$entry = lOther$createAndAdd[i];
        if (l$createAndAdd$entry != lOther$createAndAdd$entry) return false;
      }
    } else if (l$createAndAdd != lOther$createAndAdd) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSessionRelationWhereInput {
  InputSessionRelationWhereInput({this.have, this.haveNot, this.exists});

  @override
  factory InputSessionRelationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputSessionRelationWhereInputFromJson(json);

  final InputSessionWhereInput? have;

  final InputSessionWhereInput? haveNot;

  final bool? exists;

  Map<String, dynamic> toJson() => _$InputSessionRelationWhereInputToJson(this);
  int get hashCode {
    final l$have = have;
    final l$haveNot = haveNot;
    final l$exists = exists;
    return Object.hashAll([l$have, l$haveNot, l$exists]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSessionRelationWhereInput) ||
        runtimeType != other.runtimeType) return false;
    final l$have = have;
    final lOther$have = other.have;
    if (l$have != lOther$have) return false;
    final l$haveNot = haveNot;
    final lOther$haveNot = other.haveNot;
    if (l$haveNot != lOther$haveNot) return false;
    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSessionWhereInput {
  InputSessionWhereInput(
      {this.objectId,
      this.createdAt,
      this.updatedAt,
      this.ACL,
      this.restricted,
      this.user,
      this.installationId,
      this.sessionToken,
      this.expiresAt,
      this.createdWith,
      this.id,
      this.OR,
      this.AND,
      this.NOR});

  @override
  factory InputSessionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputSessionWhereInputFromJson(json);

  final InputIdWhereInput? objectId;

  final InputDateWhereInput? createdAt;

  final InputDateWhereInput? updatedAt;

  final InputObjectWhereInput? ACL;

  final InputBooleanWhereInput? restricted;

  final InputUserRelationWhereInput? user;

  final InputStringWhereInput? installationId;

  final InputStringWhereInput? sessionToken;

  final InputDateWhereInput? expiresAt;

  final InputObjectWhereInput? createdWith;

  final InputIdWhereInput? id;

  final List<InputSessionWhereInput>? OR;

  final List<InputSessionWhereInput>? AND;

  final List<InputSessionWhereInput>? NOR;

  Map<String, dynamic> toJson() => _$InputSessionWhereInputToJson(this);
  int get hashCode {
    final l$objectId = objectId;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$ACL = ACL;
    final l$restricted = restricted;
    final l$user = user;
    final l$installationId = installationId;
    final l$sessionToken = sessionToken;
    final l$expiresAt = expiresAt;
    final l$createdWith = createdWith;
    final l$id = id;
    final l$OR = OR;
    final l$AND = AND;
    final l$NOR = NOR;
    return Object.hashAll([
      l$objectId,
      l$createdAt,
      l$updatedAt,
      l$ACL,
      l$restricted,
      l$user,
      l$installationId,
      l$sessionToken,
      l$expiresAt,
      l$createdWith,
      l$id,
      l$OR == null ? null : Object.hashAll(l$OR.map((v) => v)),
      l$AND == null ? null : Object.hashAll(l$AND.map((v) => v)),
      l$NOR == null ? null : Object.hashAll(l$NOR.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSessionWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$objectId = objectId;
    final lOther$objectId = other.objectId;
    if (l$objectId != lOther$objectId) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$restricted = restricted;
    final lOther$restricted = other.restricted;
    if (l$restricted != lOther$restricted) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$installationId = installationId;
    final lOther$installationId = other.installationId;
    if (l$installationId != lOther$installationId) return false;
    final l$sessionToken = sessionToken;
    final lOther$sessionToken = other.sessionToken;
    if (l$sessionToken != lOther$sessionToken) return false;
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) return false;
    final l$createdWith = createdWith;
    final lOther$createdWith = other.createdWith;
    if (l$createdWith != lOther$createdWith) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) return false;
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) return false;
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }

    final l$AND = AND;
    final lOther$AND = other.AND;
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) return false;
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) return false;
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }

    final l$NOR = NOR;
    final lOther$NOR = other.NOR;
    if (l$NOR != null && lOther$NOR != null) {
      if (l$NOR.length != lOther$NOR.length) return false;
      for (int i = 0; i < l$NOR.length; i++) {
        final l$NOR$entry = l$NOR[i];
        final lOther$NOR$entry = lOther$NOR[i];
        if (l$NOR$entry != lOther$NOR$entry) return false;
      }
    } else if (l$NOR != lOther$NOR) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSignUpInput {
  InputSignUpInput({this.fields, this.clientMutationId});

  @override
  factory InputSignUpInput.fromJson(Map<String, dynamic> json) =>
      _$InputSignUpInputFromJson(json);

  final InputCreateUserFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputSignUpInputToJson(this);
  int get hashCode {
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSignUpInput) || runtimeType != other.runtimeType)
      return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputStringWhereInput {
  InputStringWhereInput(
      {this.equalTo,
      this.notEqualTo,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo,
      this.$in,
      this.notIn,
      this.exists,
      this.matchesRegex,
      this.options,
      this.text,
      this.inQueryKey,
      this.notInQueryKey});

  @override
  factory InputStringWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputStringWhereInputFromJson(json);

  final String? equalTo;

  final String? notEqualTo;

  final String? lessThan;

  final String? lessThanOrEqualTo;

  final String? greaterThan;

  final String? greaterThanOrEqualTo;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final List<String?>? notIn;

  final bool? exists;

  final String? matchesRegex;

  final String? options;

  final InputTextInput? text;

  final InputSelectInput? inQueryKey;

  final InputSelectInput? notInQueryKey;

  Map<String, dynamic> toJson() => _$InputStringWhereInputToJson(this);
  int get hashCode {
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$exists = exists;
    final l$matchesRegex = matchesRegex;
    final l$options = options;
    final l$text = text;
    final l$inQueryKey = inQueryKey;
    final l$notInQueryKey = notInQueryKey;
    return Object.hashAll([
      l$equalTo,
      l$notEqualTo,
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$exists,
      l$matchesRegex,
      l$options,
      l$text,
      l$inQueryKey,
      l$notInQueryKey
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    final l$matchesRegex = matchesRegex;
    final lOther$matchesRegex = other.matchesRegex;
    if (l$matchesRegex != lOther$matchesRegex) return false;
    final l$options = options;
    final lOther$options = other.options;
    if (l$options != lOther$options) return false;
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) return false;
    final l$inQueryKey = inQueryKey;
    final lOther$inQueryKey = other.inQueryKey;
    if (l$inQueryKey != lOther$inQueryKey) return false;
    final l$notInQueryKey = notInQueryKey;
    final lOther$notInQueryKey = other.notInQueryKey;
    if (l$notInQueryKey != lOther$notInQueryKey) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputSubqueryInput {
  InputSubqueryInput({required this.className, required this.where});

  @override
  factory InputSubqueryInput.fromJson(Map<String, dynamic> json) =>
      _$InputSubqueryInputFromJson(json);

  final String className;

  final String where;

  Map<String, dynamic> toJson() => _$InputSubqueryInputToJson(this);
  int get hashCode {
    final l$className = className;
    final l$where = where;
    return Object.hashAll([l$className, l$where]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSubqueryInput) || runtimeType != other.runtimeType)
      return false;
    final l$className = className;
    final lOther$className = other.className;
    if (l$className != lOther$className) return false;
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputTaskPointerInput {
  InputTaskPointerInput({this.link, this.createAndLink});

  @override
  factory InputTaskPointerInput.fromJson(Map<String, dynamic> json) =>
      _$InputTaskPointerInputFromJson(json);

  final String? link;

  final InputCreateTaskFieldsInput? createAndLink;

  Map<String, dynamic> toJson() => _$InputTaskPointerInputToJson(this);
  int get hashCode {
    final l$link = link;
    final l$createAndLink = createAndLink;
    return Object.hashAll([l$link, l$createAndLink]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputTaskPointerInput) || runtimeType != other.runtimeType)
      return false;
    final l$link = link;
    final lOther$link = other.link;
    if (l$link != lOther$link) return false;
    final l$createAndLink = createAndLink;
    final lOther$createAndLink = other.createAndLink;
    if (l$createAndLink != lOther$createAndLink) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputTaskRelationInput {
  InputTaskRelationInput({this.add, this.remove, this.createAndAdd});

  @override
  factory InputTaskRelationInput.fromJson(Map<String, dynamic> json) =>
      _$InputTaskRelationInputFromJson(json);

  final List<String>? add;

  final List<String>? remove;

  final List<InputCreateTaskFieldsInput>? createAndAdd;

  Map<String, dynamic> toJson() => _$InputTaskRelationInputToJson(this);
  int get hashCode {
    final l$add = add;
    final l$remove = remove;
    final l$createAndAdd = createAndAdd;
    return Object.hashAll([
      l$add == null ? null : Object.hashAll(l$add.map((v) => v)),
      l$remove == null ? null : Object.hashAll(l$remove.map((v) => v)),
      l$createAndAdd == null
          ? null
          : Object.hashAll(l$createAndAdd.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputTaskRelationInput) || runtimeType != other.runtimeType)
      return false;
    final l$add = add;
    final lOther$add = other.add;
    if (l$add != null && lOther$add != null) {
      if (l$add.length != lOther$add.length) return false;
      for (int i = 0; i < l$add.length; i++) {
        final l$add$entry = l$add[i];
        final lOther$add$entry = lOther$add[i];
        if (l$add$entry != lOther$add$entry) return false;
      }
    } else if (l$add != lOther$add) {
      return false;
    }

    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != null && lOther$remove != null) {
      if (l$remove.length != lOther$remove.length) return false;
      for (int i = 0; i < l$remove.length; i++) {
        final l$remove$entry = l$remove[i];
        final lOther$remove$entry = lOther$remove[i];
        if (l$remove$entry != lOther$remove$entry) return false;
      }
    } else if (l$remove != lOther$remove) {
      return false;
    }

    final l$createAndAdd = createAndAdd;
    final lOther$createAndAdd = other.createAndAdd;
    if (l$createAndAdd != null && lOther$createAndAdd != null) {
      if (l$createAndAdd.length != lOther$createAndAdd.length) return false;
      for (int i = 0; i < l$createAndAdd.length; i++) {
        final l$createAndAdd$entry = l$createAndAdd[i];
        final lOther$createAndAdd$entry = lOther$createAndAdd[i];
        if (l$createAndAdd$entry != lOther$createAndAdd$entry) return false;
      }
    } else if (l$createAndAdd != lOther$createAndAdd) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputTaskRelationWhereInput {
  InputTaskRelationWhereInput({this.have, this.haveNot, this.exists});

  @override
  factory InputTaskRelationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputTaskRelationWhereInputFromJson(json);

  final InputTaskWhereInput? have;

  final InputTaskWhereInput? haveNot;

  final bool? exists;

  Map<String, dynamic> toJson() => _$InputTaskRelationWhereInputToJson(this);
  int get hashCode {
    final l$have = have;
    final l$haveNot = haveNot;
    final l$exists = exists;
    return Object.hashAll([l$have, l$haveNot, l$exists]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputTaskRelationWhereInput) ||
        runtimeType != other.runtimeType) return false;
    final l$have = have;
    final lOther$have = other.have;
    if (l$have != lOther$have) return false;
    final l$haveNot = haveNot;
    final lOther$haveNot = other.haveNot;
    if (l$haveNot != lOther$haveNot) return false;
    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputTaskWhereInput {
  InputTaskWhereInput(
      {this.objectId,
      this.createdAt,
      this.updatedAt,
      this.ACL,
      this.text,
      this.id,
      this.OR,
      this.AND,
      this.NOR});

  @override
  factory InputTaskWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputTaskWhereInputFromJson(json);

  final InputIdWhereInput? objectId;

  final InputDateWhereInput? createdAt;

  final InputDateWhereInput? updatedAt;

  final InputObjectWhereInput? ACL;

  final InputStringWhereInput? text;

  final InputIdWhereInput? id;

  final List<InputTaskWhereInput>? OR;

  final List<InputTaskWhereInput>? AND;

  final List<InputTaskWhereInput>? NOR;

  Map<String, dynamic> toJson() => _$InputTaskWhereInputToJson(this);
  int get hashCode {
    final l$objectId = objectId;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$ACL = ACL;
    final l$text = text;
    final l$id = id;
    final l$OR = OR;
    final l$AND = AND;
    final l$NOR = NOR;
    return Object.hashAll([
      l$objectId,
      l$createdAt,
      l$updatedAt,
      l$ACL,
      l$text,
      l$id,
      l$OR == null ? null : Object.hashAll(l$OR.map((v) => v)),
      l$AND == null ? null : Object.hashAll(l$AND.map((v) => v)),
      l$NOR == null ? null : Object.hashAll(l$NOR.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputTaskWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$objectId = objectId;
    final lOther$objectId = other.objectId;
    if (l$objectId != lOther$objectId) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) return false;
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) return false;
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }

    final l$AND = AND;
    final lOther$AND = other.AND;
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) return false;
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) return false;
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }

    final l$NOR = NOR;
    final lOther$NOR = other.NOR;
    if (l$NOR != null && lOther$NOR != null) {
      if (l$NOR.length != lOther$NOR.length) return false;
      for (int i = 0; i < l$NOR.length; i++) {
        final l$NOR$entry = l$NOR[i];
        final lOther$NOR$entry = lOther$NOR[i];
        if (l$NOR$entry != lOther$NOR$entry) return false;
      }
    } else if (l$NOR != lOther$NOR) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputTextInput {
  InputTextInput({required this.search});

  @override
  factory InputTextInput.fromJson(Map<String, dynamic> json) =>
      _$InputTextInputFromJson(json);

  final InputSearchInput search;

  Map<String, dynamic> toJson() => _$InputTextInputToJson(this);
  int get hashCode {
    final l$search = search;
    return Object.hashAll([l$search]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputTextInput) || runtimeType != other.runtimeType)
      return false;
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateClassInput {
  InputUpdateClassInput(
      {required this.name, this.schemaFields, this.clientMutationId});

  @override
  factory InputUpdateClassInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateClassInputFromJson(json);

  final String name;

  final InputSchemaFieldsInput? schemaFields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputUpdateClassInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$schemaFields = schemaFields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$name, l$schemaFields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateClassInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$schemaFields = schemaFields;
    final lOther$schemaFields = other.schemaFields;
    if (l$schemaFields != lOther$schemaFields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateRoleFieldsInput {
  InputUpdateRoleFieldsInput({this.ACL, this.name, this.users, this.roles});

  @override
  factory InputUpdateRoleFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateRoleFieldsInputFromJson(json);

  final InputACLInput? ACL;

  final String? name;

  final InputUserRelationInput? users;

  final InputRoleRelationInput? roles;

  Map<String, dynamic> toJson() => _$InputUpdateRoleFieldsInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$name = name;
    final l$users = users;
    final l$roles = roles;
    return Object.hashAll([l$ACL, l$name, l$users, l$roles]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateRoleFieldsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) return false;
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles != lOther$roles) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateRoleInput {
  InputUpdateRoleInput({required this.id, this.fields, this.clientMutationId});

  @override
  factory InputUpdateRoleInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateRoleInputFromJson(json);

  final String id;

  final InputUpdateRoleFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputUpdateRoleInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$id, l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateRoleInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateSessionFieldsInput {
  InputUpdateSessionFieldsInput(
      {this.ACL,
      this.restricted,
      this.user,
      this.installationId,
      this.sessionToken,
      this.expiresAt,
      this.createdWith});

  @override
  factory InputUpdateSessionFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateSessionFieldsInputFromJson(json);

  final InputACLInput? ACL;

  final bool? restricted;

  final InputUserPointerInput? user;

  final String? installationId;

  final String? sessionToken;

  final String? expiresAt;

  final String? createdWith;

  Map<String, dynamic> toJson() => _$InputUpdateSessionFieldsInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$restricted = restricted;
    final l$user = user;
    final l$installationId = installationId;
    final l$sessionToken = sessionToken;
    final l$expiresAt = expiresAt;
    final l$createdWith = createdWith;
    return Object.hashAll([
      l$ACL,
      l$restricted,
      l$user,
      l$installationId,
      l$sessionToken,
      l$expiresAt,
      l$createdWith
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateSessionFieldsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$restricted = restricted;
    final lOther$restricted = other.restricted;
    if (l$restricted != lOther$restricted) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$installationId = installationId;
    final lOther$installationId = other.installationId;
    if (l$installationId != lOther$installationId) return false;
    final l$sessionToken = sessionToken;
    final lOther$sessionToken = other.sessionToken;
    if (l$sessionToken != lOther$sessionToken) return false;
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) return false;
    final l$createdWith = createdWith;
    final lOther$createdWith = other.createdWith;
    if (l$createdWith != lOther$createdWith) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateSessionInput {
  InputUpdateSessionInput(
      {required this.id, this.fields, this.clientMutationId});

  @override
  factory InputUpdateSessionInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateSessionInputFromJson(json);

  final String id;

  final InputUpdateSessionFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputUpdateSessionInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$id, l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateSessionInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateTaskFieldsInput {
  InputUpdateTaskFieldsInput({this.ACL, this.text});

  @override
  factory InputUpdateTaskFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateTaskFieldsInputFromJson(json);

  final InputACLInput? ACL;

  final String? text;

  Map<String, dynamic> toJson() => _$InputUpdateTaskFieldsInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$text = text;
    return Object.hashAll([l$ACL, l$text]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateTaskFieldsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateTaskInput {
  InputUpdateTaskInput({required this.id, this.fields, this.clientMutationId});

  @override
  factory InputUpdateTaskInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateTaskInputFromJson(json);

  final String id;

  final InputUpdateTaskFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputUpdateTaskInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$id, l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateTaskInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateUserFieldsInput {
  InputUpdateUserFieldsInput(
      {this.ACL,
      this.username,
      this.password,
      this.email,
      this.emailVerified,
      this.authData,
      this.tasks,
      this.avatar});

  @override
  factory InputUpdateUserFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateUserFieldsInputFromJson(json);

  final InputACLInput? ACL;

  final String? username;

  final String? password;

  final String? email;

  final bool? emailVerified;

  final String? authData;

  final InputTaskRelationInput? tasks;

  final String? avatar;

  Map<String, dynamic> toJson() => _$InputUpdateUserFieldsInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$username = username;
    final l$password = password;
    final l$email = email;
    final l$emailVerified = emailVerified;
    final l$authData = authData;
    final l$tasks = tasks;
    final l$avatar = avatar;
    return Object.hashAll([
      l$ACL,
      l$username,
      l$password,
      l$email,
      l$emailVerified,
      l$authData,
      l$tasks,
      l$avatar
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateUserFieldsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$emailVerified = emailVerified;
    final lOther$emailVerified = other.emailVerified;
    if (l$emailVerified != lOther$emailVerified) return false;
    final l$authData = authData;
    final lOther$authData = other.authData;
    if (l$authData != lOther$authData) return false;
    final l$tasks = tasks;
    final lOther$tasks = other.tasks;
    if (l$tasks != lOther$tasks) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUpdateUserInput {
  InputUpdateUserInput({required this.id, this.fields, this.clientMutationId});

  @override
  factory InputUpdateUserInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateUserInputFromJson(json);

  final String id;

  final InputUpdateUserFieldsInput? fields;

  final String? clientMutationId;

  Map<String, dynamic> toJson() => _$InputUpdateUserInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$fields = fields;
    final l$clientMutationId = clientMutationId;
    return Object.hashAll([l$id, l$fields, l$clientMutationId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != lOther$fields) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUserACLInput {
  InputUserACLInput(
      {required this.userId, required this.read, required this.write});

  @override
  factory InputUserACLInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserACLInputFromJson(json);

  final String userId;

  final bool read;

  final bool write;

  Map<String, dynamic> toJson() => _$InputUserACLInputToJson(this);
  int get hashCode {
    final l$userId = userId;
    final l$read = read;
    final l$write = write;
    return Object.hashAll([l$userId, l$read, l$write]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserACLInput) || runtimeType != other.runtimeType)
      return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$read = read;
    final lOther$read = other.read;
    if (l$read != lOther$read) return false;
    final l$write = write;
    final lOther$write = other.write;
    if (l$write != lOther$write) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUserLoginWithInput {
  InputUserLoginWithInput(
      {this.ACL, this.email, this.emailVerified, this.tasks, this.avatar});

  @override
  factory InputUserLoginWithInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserLoginWithInputFromJson(json);

  final InputACLInput? ACL;

  final String? email;

  final bool? emailVerified;

  final InputTaskRelationInput? tasks;

  final String? avatar;

  Map<String, dynamic> toJson() => _$InputUserLoginWithInputToJson(this);
  int get hashCode {
    final l$ACL = ACL;
    final l$email = email;
    final l$emailVerified = emailVerified;
    final l$tasks = tasks;
    final l$avatar = avatar;
    return Object.hashAll([l$ACL, l$email, l$emailVerified, l$tasks, l$avatar]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserLoginWithInput) || runtimeType != other.runtimeType)
      return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$emailVerified = emailVerified;
    final lOther$emailVerified = other.emailVerified;
    if (l$emailVerified != lOther$emailVerified) return false;
    final l$tasks = tasks;
    final lOther$tasks = other.tasks;
    if (l$tasks != lOther$tasks) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUserPointerInput {
  InputUserPointerInput({this.link, this.createAndLink});

  @override
  factory InputUserPointerInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserPointerInputFromJson(json);

  final String? link;

  final InputCreateUserFieldsInput? createAndLink;

  Map<String, dynamic> toJson() => _$InputUserPointerInputToJson(this);
  int get hashCode {
    final l$link = link;
    final l$createAndLink = createAndLink;
    return Object.hashAll([l$link, l$createAndLink]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserPointerInput) || runtimeType != other.runtimeType)
      return false;
    final l$link = link;
    final lOther$link = other.link;
    if (l$link != lOther$link) return false;
    final l$createAndLink = createAndLink;
    final lOther$createAndLink = other.createAndLink;
    if (l$createAndLink != lOther$createAndLink) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUserRelationInput {
  InputUserRelationInput({this.add, this.remove, this.createAndAdd});

  @override
  factory InputUserRelationInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserRelationInputFromJson(json);

  final List<String>? add;

  final List<String>? remove;

  final List<InputCreateUserFieldsInput>? createAndAdd;

  Map<String, dynamic> toJson() => _$InputUserRelationInputToJson(this);
  int get hashCode {
    final l$add = add;
    final l$remove = remove;
    final l$createAndAdd = createAndAdd;
    return Object.hashAll([
      l$add == null ? null : Object.hashAll(l$add.map((v) => v)),
      l$remove == null ? null : Object.hashAll(l$remove.map((v) => v)),
      l$createAndAdd == null
          ? null
          : Object.hashAll(l$createAndAdd.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserRelationInput) || runtimeType != other.runtimeType)
      return false;
    final l$add = add;
    final lOther$add = other.add;
    if (l$add != null && lOther$add != null) {
      if (l$add.length != lOther$add.length) return false;
      for (int i = 0; i < l$add.length; i++) {
        final l$add$entry = l$add[i];
        final lOther$add$entry = lOther$add[i];
        if (l$add$entry != lOther$add$entry) return false;
      }
    } else if (l$add != lOther$add) {
      return false;
    }

    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != null && lOther$remove != null) {
      if (l$remove.length != lOther$remove.length) return false;
      for (int i = 0; i < l$remove.length; i++) {
        final l$remove$entry = l$remove[i];
        final lOther$remove$entry = lOther$remove[i];
        if (l$remove$entry != lOther$remove$entry) return false;
      }
    } else if (l$remove != lOther$remove) {
      return false;
    }

    final l$createAndAdd = createAndAdd;
    final lOther$createAndAdd = other.createAndAdd;
    if (l$createAndAdd != null && lOther$createAndAdd != null) {
      if (l$createAndAdd.length != lOther$createAndAdd.length) return false;
      for (int i = 0; i < l$createAndAdd.length; i++) {
        final l$createAndAdd$entry = l$createAndAdd[i];
        final lOther$createAndAdd$entry = lOther$createAndAdd[i];
        if (l$createAndAdd$entry != lOther$createAndAdd$entry) return false;
      }
    } else if (l$createAndAdd != lOther$createAndAdd) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUserRelationWhereInput {
  InputUserRelationWhereInput({this.have, this.haveNot, this.exists});

  @override
  factory InputUserRelationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserRelationWhereInputFromJson(json);

  final InputUserWhereInput? have;

  final InputUserWhereInput? haveNot;

  final bool? exists;

  Map<String, dynamic> toJson() => _$InputUserRelationWhereInputToJson(this);
  int get hashCode {
    final l$have = have;
    final l$haveNot = haveNot;
    final l$exists = exists;
    return Object.hashAll([l$have, l$haveNot, l$exists]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserRelationWhereInput) ||
        runtimeType != other.runtimeType) return false;
    final l$have = have;
    final lOther$have = other.have;
    if (l$have != lOther$have) return false;
    final l$haveNot = haveNot;
    final lOther$haveNot = other.haveNot;
    if (l$haveNot != lOther$haveNot) return false;
    final l$exists = exists;
    final lOther$exists = other.exists;
    if (l$exists != lOther$exists) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputUserWhereInput {
  InputUserWhereInput(
      {this.objectId,
      this.createdAt,
      this.updatedAt,
      this.ACL,
      this.username,
      this.password,
      this.email,
      this.emailVerified,
      this.authData,
      this.tasks,
      this.avatar,
      this.id,
      this.OR,
      this.AND,
      this.NOR});

  @override
  factory InputUserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserWhereInputFromJson(json);

  final InputIdWhereInput? objectId;

  final InputDateWhereInput? createdAt;

  final InputDateWhereInput? updatedAt;

  final InputObjectWhereInput? ACL;

  final InputStringWhereInput? username;

  final InputStringWhereInput? password;

  final InputStringWhereInput? email;

  final InputBooleanWhereInput? emailVerified;

  final InputObjectWhereInput? authData;

  final InputTaskRelationWhereInput? tasks;

  final InputStringWhereInput? avatar;

  final InputIdWhereInput? id;

  final List<InputUserWhereInput>? OR;

  final List<InputUserWhereInput>? AND;

  final List<InputUserWhereInput>? NOR;

  Map<String, dynamic> toJson() => _$InputUserWhereInputToJson(this);
  int get hashCode {
    final l$objectId = objectId;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$ACL = ACL;
    final l$username = username;
    final l$password = password;
    final l$email = email;
    final l$emailVerified = emailVerified;
    final l$authData = authData;
    final l$tasks = tasks;
    final l$avatar = avatar;
    final l$id = id;
    final l$OR = OR;
    final l$AND = AND;
    final l$NOR = NOR;
    return Object.hashAll([
      l$objectId,
      l$createdAt,
      l$updatedAt,
      l$ACL,
      l$username,
      l$password,
      l$email,
      l$emailVerified,
      l$authData,
      l$tasks,
      l$avatar,
      l$id,
      l$OR == null ? null : Object.hashAll(l$OR.map((v) => v)),
      l$AND == null ? null : Object.hashAll(l$AND.map((v) => v)),
      l$NOR == null ? null : Object.hashAll(l$NOR.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$objectId = objectId;
    final lOther$objectId = other.objectId;
    if (l$objectId != lOther$objectId) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$ACL = ACL;
    final lOther$ACL = other.ACL;
    if (l$ACL != lOther$ACL) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$emailVerified = emailVerified;
    final lOther$emailVerified = other.emailVerified;
    if (l$emailVerified != lOther$emailVerified) return false;
    final l$authData = authData;
    final lOther$authData = other.authData;
    if (l$authData != lOther$authData) return false;
    final l$tasks = tasks;
    final lOther$tasks = other.tasks;
    if (l$tasks != lOther$tasks) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) return false;
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) return false;
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }

    final l$AND = AND;
    final lOther$AND = other.AND;
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) return false;
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) return false;
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }

    final l$NOR = NOR;
    final lOther$NOR = other.NOR;
    if (l$NOR != null && lOther$NOR != null) {
      if (l$NOR.length != lOther$NOR.length) return false;
      for (int i = 0; i < l$NOR.length; i++) {
        final l$NOR$entry = l$NOR[i];
        final lOther$NOR$entry = lOther$NOR[i];
        if (l$NOR$entry != lOther$NOR$entry) return false;
      }
    } else if (l$NOR != lOther$NOR) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputWithinInput {
  InputWithinInput({required this.box});

  @override
  factory InputWithinInput.fromJson(Map<String, dynamic> json) =>
      _$InputWithinInputFromJson(json);

  final InputBoxInput box;

  Map<String, dynamic> toJson() => _$InputWithinInputToJson(this);
  int get hashCode {
    final l$box = box;
    return Object.hashAll([l$box]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputWithinInput) || runtimeType != other.runtimeType)
      return false;
    final l$box = box;
    final lOther$box = other.box;
    if (l$box != lOther$box) return false;
    return true;
  }
}

enum EnumReadPreference {
  @JsonValue('PRIMARY')
  primary,
  @JsonValue('PRIMARY_PREFERRED')
  primaryPreferred,
  @JsonValue('SECONDARY')
  secondary,
  @JsonValue('SECONDARY_PREFERRED')
  secondaryPreferred,
  @JsonValue('NEAREST')
  nearest,
  $unknown
}

enum EnumRoleOrder {
  @JsonValue('objectId_ASC')
  objectIdASC,
  @JsonValue('objectId_DESC')
  objectIdDESC,
  @JsonValue('createdAt_ASC')
  createdAtASC,
  @JsonValue('createdAt_DESC')
  createdAtDESC,
  @JsonValue('updatedAt_ASC')
  updatedAtASC,
  @JsonValue('updatedAt_DESC')
  updatedAtDESC,
  @JsonValue('ACL_ASC')
  aclAsc,
  @JsonValue('ACL_DESC')
  aclDesc,
  @JsonValue('name_ASC')
  nameASC,
  @JsonValue('name_DESC')
  nameDESC,
  @JsonValue('users_ASC')
  usersASC,
  @JsonValue('users_DESC')
  usersDESC,
  @JsonValue('roles_ASC')
  rolesASC,
  @JsonValue('roles_DESC')
  rolesDESC,
  @JsonValue('id_ASC')
  idASC,
  @JsonValue('id_DESC')
  idDESC,
  $unknown
}

enum EnumSessionOrder {
  @JsonValue('objectId_ASC')
  objectIdASC,
  @JsonValue('objectId_DESC')
  objectIdDESC,
  @JsonValue('createdAt_ASC')
  createdAtASC,
  @JsonValue('createdAt_DESC')
  createdAtDESC,
  @JsonValue('updatedAt_ASC')
  updatedAtASC,
  @JsonValue('updatedAt_DESC')
  updatedAtDESC,
  @JsonValue('ACL_ASC')
  aclAsc,
  @JsonValue('ACL_DESC')
  aclDesc,
  @JsonValue('restricted_ASC')
  restrictedASC,
  @JsonValue('restricted_DESC')
  restrictedDESC,
  @JsonValue('user_ASC')
  userASC,
  @JsonValue('user_DESC')
  userDESC,
  @JsonValue('installationId_ASC')
  installationIdASC,
  @JsonValue('installationId_DESC')
  installationIdDESC,
  @JsonValue('sessionToken_ASC')
  sessionTokenASC,
  @JsonValue('sessionToken_DESC')
  sessionTokenDESC,
  @JsonValue('expiresAt_ASC')
  expiresAtASC,
  @JsonValue('expiresAt_DESC')
  expiresAtDESC,
  @JsonValue('createdWith_ASC')
  createdWithASC,
  @JsonValue('createdWith_DESC')
  createdWithDESC,
  @JsonValue('id_ASC')
  idASC,
  @JsonValue('id_DESC')
  idDESC,
  $unknown
}

enum EnumTaskOrder {
  @JsonValue('objectId_ASC')
  objectIdASC,
  @JsonValue('objectId_DESC')
  objectIdDESC,
  @JsonValue('createdAt_ASC')
  createdAtASC,
  @JsonValue('createdAt_DESC')
  createdAtDESC,
  @JsonValue('updatedAt_ASC')
  updatedAtASC,
  @JsonValue('updatedAt_DESC')
  updatedAtDESC,
  @JsonValue('ACL_ASC')
  aclAsc,
  @JsonValue('ACL_DESC')
  aclDesc,
  @JsonValue('text_ASC')
  textASC,
  @JsonValue('text_DESC')
  textDESC,
  @JsonValue('id_ASC')
  idASC,
  @JsonValue('id_DESC')
  idDESC,
  $unknown
}

enum EnumUserOrder {
  @JsonValue('objectId_ASC')
  objectIdASC,
  @JsonValue('objectId_DESC')
  objectIdDESC,
  @JsonValue('createdAt_ASC')
  createdAtASC,
  @JsonValue('createdAt_DESC')
  createdAtDESC,
  @JsonValue('updatedAt_ASC')
  updatedAtASC,
  @JsonValue('updatedAt_DESC')
  updatedAtDESC,
  @JsonValue('ACL_ASC')
  aclAsc,
  @JsonValue('ACL_DESC')
  aclDesc,
  @JsonValue('username_ASC')
  usernameASC,
  @JsonValue('username_DESC')
  usernameDESC,
  @JsonValue('password_ASC')
  passwordASC,
  @JsonValue('password_DESC')
  passwordDESC,
  @JsonValue('email_ASC')
  emailASC,
  @JsonValue('email_DESC')
  emailDESC,
  @JsonValue('emailVerified_ASC')
  emailVerifiedASC,
  @JsonValue('emailVerified_DESC')
  emailVerifiedDESC,
  @JsonValue('authData_ASC')
  authDataASC,
  @JsonValue('authData_DESC')
  authDataDESC,
  @JsonValue('tasks_ASC')
  tasksASC,
  @JsonValue('tasks_DESC')
  tasksDESC,
  @JsonValue('avatar_ASC')
  avatarASC,
  @JsonValue('avatar_DESC')
  avatarDESC,
  @JsonValue('id_ASC')
  idASC,
  @JsonValue('id_DESC')
  idDESC,
  $unknown
}

const POSSIBLE_TYPES_MAP = const {
  'ArrayResult': {'Element', 'Role', 'Session', 'User', 'Task'},
  'ParseObject': {'Role', 'Session', 'Task', 'User'},
  'Node': {'Role', 'Session', 'Task', 'User'},
  'SchemaField': {
    'SchemaACLField',
    'SchemaArrayField',
    'SchemaBooleanField',
    'SchemaBytesField',
    'SchemaDateField',
    'SchemaFileField',
    'SchemaGeoPointField',
    'SchemaNumberField',
    'SchemaObjectField',
    'SchemaPointerField',
    'SchemaPolygonField',
    'SchemaRelationField',
    'SchemaStringField'
  }
};
