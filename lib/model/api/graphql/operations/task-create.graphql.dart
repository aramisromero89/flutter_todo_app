import '../fragments/task.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'task-create.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationtaskCreate {
  VariablesMutationtaskCreate({required this.userId, required this.text});

  @override
  factory VariablesMutationtaskCreate.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationtaskCreateFromJson(json);

  final String userId;

  final String text;

  Map<String, dynamic> toJson() => _$VariablesMutationtaskCreateToJson(this);
  int get hashCode {
    final l$userId = userId;
    final l$text = text;
    return Object.hashAll([l$userId, l$text]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationtaskCreate) ||
        runtimeType != other.runtimeType) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationtaskCreate {
  MutationtaskCreate({this.updateUser, required this.$__typename});

  @override
  factory MutationtaskCreate.fromJson(Map<String, dynamic> json) =>
      _$MutationtaskCreateFromJson(json);

  final MutationtaskCreate$updateUser? updateUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationtaskCreateToJson(this);
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskCreate) || runtimeType != other.runtimeType)
      return false;
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskCreate on MutationtaskCreate {
  MutationtaskCreate copyWith(
          {MutationtaskCreate$updateUser? Function()? updateUser,
          String? $__typename}) =>
      MutationtaskCreate(
          updateUser: updateUser == null ? this.updateUser : updateUser(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATIONTASK_CREATE = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'taskCreate'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'text')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: VariableNode(name: NameNode(value: 'userId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'fields'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'tasks'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'createAndAdd'),
                                    value: ListValueNode(values: [
                                      ObjectValueNode(fields: [
                                        ObjectFieldNode(
                                            name: NameNode(value: 'text'),
                                            value: VariableNode(
                                                name: NameNode(value: 'text')))
                                      ])
                                    ]))
                              ]))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'tasks'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'edges'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'node'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FragmentSpreadNode(
                                          name: NameNode(value: 'TaskFragment'),
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
  FRAGMENT_DEFINITION_FRAGMENT_TASK_FRAGMENT,
]);
MutationtaskCreate _parserFnMutationtaskCreate(Map<String, dynamic> data) =>
    MutationtaskCreate.fromJson(data);
typedef OnMutationCompletedMutationtaskCreate = FutureOr<void> Function(
    dynamic, MutationtaskCreate?);

class OptionsMutationtaskCreate
    extends graphql.MutationOptions<MutationtaskCreate> {
  OptionsMutationtaskCreate(
      {String? operationName,
      required VariablesMutationtaskCreate variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationtaskCreate? onCompleted,
      graphql.OnMutationUpdate<MutationtaskCreate>? update,
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
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationtaskCreate(data)),
            update: update,
            onError: onError,
            document: MUTATIONTASK_CREATE,
            parserFn: _parserFnMutationtaskCreate);

  final OnMutationCompletedMutationtaskCreate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationtaskCreate
    extends graphql.WatchQueryOptions<MutationtaskCreate> {
  WatchOptionsMutationtaskCreate(
      {String? operationName,
      required VariablesMutationtaskCreate variables,
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
            document: MUTATIONTASK_CREATE,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationtaskCreate);
}

extension ClientExtensionMutationtaskCreate on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationtaskCreate>> mutatetaskCreate(
          OptionsMutationtaskCreate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationtaskCreate> watchMutationtaskCreate(
          WatchOptionsMutationtaskCreate options) =>
      this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskCreate$updateUser {
  MutationtaskCreate$updateUser(
      {required this.user, required this.$__typename});

  @override
  factory MutationtaskCreate$updateUser.fromJson(Map<String, dynamic> json) =>
      _$MutationtaskCreate$updateUserFromJson(json);

  final MutationtaskCreate$updateUser$user user;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationtaskCreate$updateUserToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskCreate$updateUser) ||
        runtimeType != other.runtimeType) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskCreate$updateUser
    on MutationtaskCreate$updateUser {
  MutationtaskCreate$updateUser copyWith(
          {MutationtaskCreate$updateUser$user? user, String? $__typename}) =>
      MutationtaskCreate$updateUser(
          user: user == null ? this.user : user,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskCreate$updateUser$user {
  MutationtaskCreate$updateUser$user(
      {required this.tasks, required this.$__typename});

  @override
  factory MutationtaskCreate$updateUser$user.fromJson(
          Map<String, dynamic> json) =>
      _$MutationtaskCreate$updateUser$userFromJson(json);

  final MutationtaskCreate$updateUser$user$tasks tasks;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationtaskCreate$updateUser$userToJson(this);
  int get hashCode {
    final l$tasks = tasks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tasks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskCreate$updateUser$user) ||
        runtimeType != other.runtimeType) return false;
    final l$tasks = tasks;
    final lOther$tasks = other.tasks;
    if (l$tasks != lOther$tasks) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskCreate$updateUser$user
    on MutationtaskCreate$updateUser$user {
  MutationtaskCreate$updateUser$user copyWith(
          {MutationtaskCreate$updateUser$user$tasks? tasks,
          String? $__typename}) =>
      MutationtaskCreate$updateUser$user(
          tasks: tasks == null ? this.tasks : tasks,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskCreate$updateUser$user$tasks {
  MutationtaskCreate$updateUser$user$tasks(
      {this.edges, required this.$__typename});

  @override
  factory MutationtaskCreate$updateUser$user$tasks.fromJson(
          Map<String, dynamic> json) =>
      _$MutationtaskCreate$updateUser$user$tasksFromJson(json);

  final List<MutationtaskCreate$updateUser$user$tasks$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationtaskCreate$updateUser$user$tasksToJson(this);
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskCreate$updateUser$user$tasks) ||
        runtimeType != other.runtimeType) return false;
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) return false;
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) return false;
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskCreate$updateUser$user$tasks
    on MutationtaskCreate$updateUser$user$tasks {
  MutationtaskCreate$updateUser$user$tasks copyWith(
          {List<MutationtaskCreate$updateUser$user$tasks$edges?>? Function()?
              edges,
          String? $__typename}) =>
      MutationtaskCreate$updateUser$user$tasks(
          edges: edges == null ? this.edges : edges(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskCreate$updateUser$user$tasks$edges {
  MutationtaskCreate$updateUser$user$tasks$edges(
      {this.node, required this.$__typename});

  @override
  factory MutationtaskCreate$updateUser$user$tasks$edges.fromJson(
          Map<String, dynamic> json) =>
      _$MutationtaskCreate$updateUser$user$tasks$edgesFromJson(json);

  final MutationtaskCreate$updateUser$user$tasks$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationtaskCreate$updateUser$user$tasks$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskCreate$updateUser$user$tasks$edges) ||
        runtimeType != other.runtimeType) return false;
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskCreate$updateUser$user$tasks$edges
    on MutationtaskCreate$updateUser$user$tasks$edges {
  MutationtaskCreate$updateUser$user$tasks$edges copyWith(
          {MutationtaskCreate$updateUser$user$tasks$edges$node? Function()?
              node,
          String? $__typename}) =>
      MutationtaskCreate$updateUser$user$tasks$edges(
          node: node == null ? this.node : node(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskCreate$updateUser$user$tasks$edges$node
    implements FragmentTaskFragment {
  MutationtaskCreate$updateUser$user$tasks$edges$node(
      {required this.id, required this.text, required this.$__typename});

  @override
  factory MutationtaskCreate$updateUser$user$tasks$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$MutationtaskCreate$updateUser$user$tasks$edges$nodeFromJson(json);

  final String id;

  final String text;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationtaskCreate$updateUser$user$tasks$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$text, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskCreate$updateUser$user$tasks$edges$node) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskCreate$updateUser$user$tasks$edges$node
    on MutationtaskCreate$updateUser$user$tasks$edges$node {
  MutationtaskCreate$updateUser$user$tasks$edges$node copyWith(
          {String? id, String? text, String? $__typename}) =>
      MutationtaskCreate$updateUser$user$tasks$edges$node(
          id: id == null ? this.id : id,
          text: text == null ? this.text : text,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
