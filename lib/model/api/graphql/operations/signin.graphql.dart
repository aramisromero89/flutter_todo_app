import '../fragments/session.graphql.dart';
import '../fragments/user.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'signin.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationsignIn {
  VariablesMutationsignIn({required this.username, required this.password});

  @override
  factory VariablesMutationsignIn.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationsignInFromJson(json);

  final String username;

  final String password;

  Map<String, dynamic> toJson() => _$VariablesMutationsignInToJson(this);
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([l$username, l$password]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationsignIn) || runtimeType != other.runtimeType)
      return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationsignIn {
  MutationsignIn({this.logIn, required this.$__typename});

  @override
  factory MutationsignIn.fromJson(Map<String, dynamic> json) =>
      _$MutationsignInFromJson(json);

  final MutationsignIn$logIn? logIn;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationsignInToJson(this);
  int get hashCode {
    final l$logIn = logIn;
    final l$$__typename = $__typename;
    return Object.hashAll([l$logIn, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignIn) || runtimeType != other.runtimeType)
      return false;
    final l$logIn = logIn;
    final lOther$logIn = other.logIn;
    if (l$logIn != lOther$logIn) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationsignIn on MutationsignIn {
  MutationsignIn copyWith(
          {MutationsignIn$logIn? Function()? logIn, String? $__typename}) =>
      MutationsignIn(
          logIn: logIn == null ? this.logIn : logIn(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATIONSIGN_IN = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'signIn'),
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
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'logIn'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'username'),
                        value: VariableNode(name: NameNode(value: 'username'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'password'),
                        value: VariableNode(name: NameNode(value: 'password')))
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
MutationsignIn _parserFnMutationsignIn(Map<String, dynamic> data) =>
    MutationsignIn.fromJson(data);
typedef OnMutationCompletedMutationsignIn = FutureOr<void> Function(
    dynamic, MutationsignIn?);

class OptionsMutationsignIn extends graphql.MutationOptions<MutationsignIn> {
  OptionsMutationsignIn(
      {String? operationName,
      required VariablesMutationsignIn variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationsignIn? onCompleted,
      graphql.OnMutationUpdate<MutationsignIn>? update,
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
                    data, data == null ? null : _parserFnMutationsignIn(data)),
            update: update,
            onError: onError,
            document: MUTATIONSIGN_IN,
            parserFn: _parserFnMutationsignIn);

  final OnMutationCompletedMutationsignIn? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationsignIn
    extends graphql.WatchQueryOptions<MutationsignIn> {
  WatchOptionsMutationsignIn(
      {String? operationName,
      required VariablesMutationsignIn variables,
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
            document: MUTATIONSIGN_IN,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationsignIn);
}

extension ClientExtensionMutationsignIn on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationsignIn>> mutatesignIn(
          OptionsMutationsignIn options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationsignIn> watchMutationsignIn(
          WatchOptionsMutationsignIn options) =>
      this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationsignIn$logIn {
  MutationsignIn$logIn({required this.viewer, required this.$__typename});

  @override
  factory MutationsignIn$logIn.fromJson(Map<String, dynamic> json) =>
      _$MutationsignIn$logInFromJson(json);

  final MutationsignIn$logIn$viewer viewer;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationsignIn$logInToJson(this);
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([l$viewer, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignIn$logIn) || runtimeType != other.runtimeType)
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

extension UtilityExtensionMutationsignIn$logIn on MutationsignIn$logIn {
  MutationsignIn$logIn copyWith(
          {MutationsignIn$logIn$viewer? viewer, String? $__typename}) =>
      MutationsignIn$logIn(
          viewer: viewer == null ? this.viewer : viewer,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationsignIn$logIn$viewer implements FragmentSessionFragment {
  MutationsignIn$logIn$viewer(
      {required this.user,
      required this.sessionToken,
      required this.$__typename});

  @override
  factory MutationsignIn$logIn$viewer.fromJson(Map<String, dynamic> json) =>
      _$MutationsignIn$logIn$viewerFromJson(json);

  final MutationsignIn$logIn$viewer$user user;

  final String sessionToken;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationsignIn$logIn$viewerToJson(this);
  int get hashCode {
    final l$user = user;
    final l$sessionToken = sessionToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$sessionToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignIn$logIn$viewer) ||
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

extension UtilityExtensionMutationsignIn$logIn$viewer
    on MutationsignIn$logIn$viewer {
  MutationsignIn$logIn$viewer copyWith(
          {MutationsignIn$logIn$viewer$user? user,
          String? sessionToken,
          String? $__typename}) =>
      MutationsignIn$logIn$viewer(
          user: user == null ? this.user : user,
          sessionToken: sessionToken == null ? this.sessionToken : sessionToken,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationsignIn$logIn$viewer$user
    implements FragmentSessionFragment$user, FragmentUserFragment {
  MutationsignIn$logIn$viewer$user(
      {required this.id,
      this.username,
      this.avatar,
      required this.$__typename});

  @override
  factory MutationsignIn$logIn$viewer$user.fromJson(
          Map<String, dynamic> json) =>
      _$MutationsignIn$logIn$viewer$userFromJson(json);

  final String id;

  final String? username;

  final String? avatar;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationsignIn$logIn$viewer$userToJson(this);
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
    if (!(other is MutationsignIn$logIn$viewer$user) ||
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

extension UtilityExtensionMutationsignIn$logIn$viewer$user
    on MutationsignIn$logIn$viewer$user {
  MutationsignIn$logIn$viewer$user copyWith(
          {String? id,
          String? Function()? username,
          String? Function()? avatar,
          String? $__typename}) =>
      MutationsignIn$logIn$viewer$user(
          id: id == null ? this.id : id,
          username: username == null ? this.username : username(),
          avatar: avatar == null ? this.avatar : avatar(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
