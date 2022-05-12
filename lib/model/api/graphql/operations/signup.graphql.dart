import '../fragments/session.graphql.dart';
import '../fragments/user.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'signup.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationsignUp {
  VariablesMutationsignUp(
      {required this.username, required this.password, this.avatar});

  @override
  factory VariablesMutationsignUp.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationsignUpFromJson(json);

  final String username;

  final String password;

  final String? avatar;

  Map<String, dynamic> toJson() => _$VariablesMutationsignUpToJson(this);
  int get hashCode {
    final l$username = username;
    final l$password = password;
    final l$avatar = avatar;
    return Object.hashAll([l$username, l$password, l$avatar]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationsignUp) || runtimeType != other.runtimeType)
      return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationsignUp {
  MutationsignUp({this.signUp, required this.$__typename});

  @override
  factory MutationsignUp.fromJson(Map<String, dynamic> json) =>
      _$MutationsignUpFromJson(json);

  final MutationsignUp$signUp? signUp;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationsignUpToJson(this);
  int get hashCode {
    final l$signUp = signUp;
    final l$$__typename = $__typename;
    return Object.hashAll([l$signUp, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignUp) || runtimeType != other.runtimeType)
      return false;
    final l$signUp = signUp;
    final lOther$signUp = other.signUp;
    if (l$signUp != lOther$signUp) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationsignUp on MutationsignUp {
  MutationsignUp copyWith(
          {MutationsignUp$signUp? Function()? signUp, String? $__typename}) =>
      MutationsignUp(
          signUp: signUp == null ? this.signUp : signUp(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATIONSIGN_UP = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'signUp'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'username')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'avatar')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'signUp'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'fields'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'username'),
                              value: VariableNode(
                                  name: NameNode(value: 'username'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'password'),
                              value: VariableNode(
                                  name: NameNode(value: 'password'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'avatar'),
                              value:
                                  VariableNode(name: NameNode(value: 'avatar')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'viewer'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'SessionFragment'),
                        directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_DEFINITION_FRAGMENT_SESSION_FRAGMENT,
  FRAGMENT_DEFINITION_FRAGMENT_USER_FRAGMENT,
]);
MutationsignUp _parserFnMutationsignUp(Map<String, dynamic> data) =>
    MutationsignUp.fromJson(data);
typedef OnMutationCompletedMutationsignUp = FutureOr<void> Function(
    dynamic, MutationsignUp?);

class OptionsMutationsignUp extends graphql.MutationOptions<MutationsignUp> {
  OptionsMutationsignUp(
      {String? operationName,
      required VariablesMutationsignUp variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationsignUp? onCompleted,
      graphql.OnMutationUpdate<MutationsignUp>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data, data == null ? null : _parserFnMutationsignUp(data)),
            update: update,
            onError: onError,
            document: MUTATIONSIGN_UP,
            parserFn: _parserFnMutationsignUp);

  final OnMutationCompletedMutationsignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationsignUp
    extends graphql.WatchQueryOptions<MutationsignUp> {
  WatchOptionsMutationsignUp(
      {String? operationName,
      required VariablesMutationsignUp variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: MUTATIONSIGN_UP,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationsignUp);
}

extension ClientExtensionMutationsignUp on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationsignUp>> mutatesignUp(
          OptionsMutationsignUp options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationsignUp> watchMutationsignUp(
          WatchOptionsMutationsignUp options) =>
      this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationsignUp$signUp {
  MutationsignUp$signUp({required this.viewer, required this.$__typename});

  @override
  factory MutationsignUp$signUp.fromJson(Map<String, dynamic> json) =>
      _$MutationsignUp$signUpFromJson(json);

  final MutationsignUp$signUp$viewer viewer;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationsignUp$signUpToJson(this);
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([l$viewer, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignUp$signUp) || runtimeType != other.runtimeType)
      return false;
    final l$viewer = viewer;
    final lOther$viewer = other.viewer;
    if (l$viewer != lOther$viewer) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationsignUp$signUp on MutationsignUp$signUp {
  MutationsignUp$signUp copyWith(
          {MutationsignUp$signUp$viewer? viewer, String? $__typename}) =>
      MutationsignUp$signUp(
          viewer: viewer == null ? this.viewer : viewer,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationsignUp$signUp$viewer implements FragmentSessionFragment {
  MutationsignUp$signUp$viewer(
      {required this.user,
      required this.sessionToken,
      required this.$__typename});

  @override
  factory MutationsignUp$signUp$viewer.fromJson(Map<String, dynamic> json) =>
      _$MutationsignUp$signUp$viewerFromJson(json);

  final MutationsignUp$signUp$viewer$user user;

  final String sessionToken;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationsignUp$signUp$viewerToJson(this);
  int get hashCode {
    final l$user = user;
    final l$sessionToken = sessionToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$sessionToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignUp$signUp$viewer) ||
        runtimeType != other.runtimeType) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$sessionToken = sessionToken;
    final lOther$sessionToken = other.sessionToken;
    if (l$sessionToken != lOther$sessionToken) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationsignUp$signUp$viewer
    on MutationsignUp$signUp$viewer {
  MutationsignUp$signUp$viewer copyWith(
          {MutationsignUp$signUp$viewer$user? user,
          String? sessionToken,
          String? $__typename}) =>
      MutationsignUp$signUp$viewer(
          user: user == null ? this.user : user,
          sessionToken: sessionToken == null ? this.sessionToken : sessionToken,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationsignUp$signUp$viewer$user
    implements FragmentSessionFragment$user, FragmentUserFragment {
  MutationsignUp$signUp$viewer$user(
      {required this.id,
      this.username,
      this.avatar,
      required this.$__typename});

  @override
  factory MutationsignUp$signUp$viewer$user.fromJson(
          Map<String, dynamic> json) =>
      _$MutationsignUp$signUp$viewer$userFromJson(json);

  final String id;

  final String? username;

  final String? avatar;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationsignUp$signUp$viewer$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$username, l$avatar, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignUp$signUp$viewer$user) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationsignUp$signUp$viewer$user
    on MutationsignUp$signUp$viewer$user {
  MutationsignUp$signUp$viewer$user copyWith(
          {String? id,
          String? Function()? username,
          String? Function()? avatar,
          String? $__typename}) =>
      MutationsignUp$signUp$viewer$user(
          id: id == null ? this.id : id,
          username: username == null ? this.username : username(),
          avatar: avatar == null ? this.avatar : avatar(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
