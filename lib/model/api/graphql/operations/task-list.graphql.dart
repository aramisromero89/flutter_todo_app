import '../fragments/task.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'task-list.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class QuerytaskList {
  QuerytaskList({required this.viewer, required this.$__typename});

  @override
  factory QuerytaskList.fromJson(Map<String, dynamic> json) =>
      _$QuerytaskListFromJson(json);

  final QuerytaskList$viewer viewer;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QuerytaskListToJson(this);
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([l$viewer, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerytaskList) || runtimeType != other.runtimeType)
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

extension UtilityExtensionQuerytaskList on QuerytaskList {
  QuerytaskList copyWith({QuerytaskList$viewer? viewer, String? $__typename}) =>
      QuerytaskList(
          viewer: viewer == null ? this.viewer : viewer,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERYTASK_LIST = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'taskList'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'viewer'),
            alias: null,
            arguments: [],
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
QuerytaskList _parserFnQuerytaskList(Map<String, dynamic> data) =>
    QuerytaskList.fromJson(data);

class OptionsQuerytaskList extends graphql.QueryOptions<QuerytaskList> {
  OptionsQuerytaskList(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERYTASK_LIST,
            parserFn: _parserFnQuerytaskList);
}

class WatchOptionsQuerytaskList
    extends graphql.WatchQueryOptions<QuerytaskList> {
  WatchOptionsQuerytaskList(
      {String? operationName,
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
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERYTASK_LIST,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQuerytaskList);
}

class FetchMoreOptionsQuerytaskList extends graphql.FetchMoreOptions {
  FetchMoreOptionsQuerytaskList({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERYTASK_LIST);
}

extension ClientExtensionQuerytaskList on graphql.GraphQLClient {
  Future<graphql.QueryResult<QuerytaskList>> querytaskList(
          [OptionsQuerytaskList? options]) async =>
      await this.query(options ?? OptionsQuerytaskList());
  graphql.ObservableQuery<QuerytaskList> watchQuerytaskList(
          [WatchOptionsQuerytaskList? options]) =>
      this.watchQuery(options ?? WatchOptionsQuerytaskList());
  void writeQuerytaskList(
          {required QuerytaskList data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERYTASK_LIST)),
          data: data.toJson(),
          broadcast: broadcast);
  QuerytaskList? readQuerytaskList({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(operation: graphql.Operation(document: QUERYTASK_LIST)),
        optimistic: optimistic);
    return result == null ? null : QuerytaskList.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QuerytaskList$viewer {
  QuerytaskList$viewer({required this.user, required this.$__typename});

  @override
  factory QuerytaskList$viewer.fromJson(Map<String, dynamic> json) =>
      _$QuerytaskList$viewerFromJson(json);

  final QuerytaskList$viewer$user user;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QuerytaskList$viewerToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerytaskList$viewer) || runtimeType != other.runtimeType)
      return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQuerytaskList$viewer on QuerytaskList$viewer {
  QuerytaskList$viewer copyWith(
          {QuerytaskList$viewer$user? user, String? $__typename}) =>
      QuerytaskList$viewer(
          user: user == null ? this.user : user,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QuerytaskList$viewer$user {
  QuerytaskList$viewer$user({required this.tasks, required this.$__typename});

  @override
  factory QuerytaskList$viewer$user.fromJson(Map<String, dynamic> json) =>
      _$QuerytaskList$viewer$userFromJson(json);

  final QuerytaskList$viewer$user$tasks tasks;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QuerytaskList$viewer$userToJson(this);
  int get hashCode {
    final l$tasks = tasks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tasks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerytaskList$viewer$user) ||
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

extension UtilityExtensionQuerytaskList$viewer$user
    on QuerytaskList$viewer$user {
  QuerytaskList$viewer$user copyWith(
          {QuerytaskList$viewer$user$tasks? tasks, String? $__typename}) =>
      QuerytaskList$viewer$user(
          tasks: tasks == null ? this.tasks : tasks,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QuerytaskList$viewer$user$tasks {
  QuerytaskList$viewer$user$tasks({this.edges, required this.$__typename});

  @override
  factory QuerytaskList$viewer$user$tasks.fromJson(Map<String, dynamic> json) =>
      _$QuerytaskList$viewer$user$tasksFromJson(json);

  final List<QuerytaskList$viewer$user$tasks$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QuerytaskList$viewer$user$tasksToJson(this);
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
    if (!(other is QuerytaskList$viewer$user$tasks) ||
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

extension UtilityExtensionQuerytaskList$viewer$user$tasks
    on QuerytaskList$viewer$user$tasks {
  QuerytaskList$viewer$user$tasks copyWith(
          {List<QuerytaskList$viewer$user$tasks$edges?>? Function()? edges,
          String? $__typename}) =>
      QuerytaskList$viewer$user$tasks(
          edges: edges == null ? this.edges : edges(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QuerytaskList$viewer$user$tasks$edges {
  QuerytaskList$viewer$user$tasks$edges({this.node, required this.$__typename});

  @override
  factory QuerytaskList$viewer$user$tasks$edges.fromJson(
          Map<String, dynamic> json) =>
      _$QuerytaskList$viewer$user$tasks$edgesFromJson(json);

  final QuerytaskList$viewer$user$tasks$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QuerytaskList$viewer$user$tasks$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerytaskList$viewer$user$tasks$edges) ||
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

extension UtilityExtensionQuerytaskList$viewer$user$tasks$edges
    on QuerytaskList$viewer$user$tasks$edges {
  QuerytaskList$viewer$user$tasks$edges copyWith(
          {QuerytaskList$viewer$user$tasks$edges$node? Function()? node,
          String? $__typename}) =>
      QuerytaskList$viewer$user$tasks$edges(
          node: node == null ? this.node : node(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QuerytaskList$viewer$user$tasks$edges$node
    implements FragmentTaskFragment {
  QuerytaskList$viewer$user$tasks$edges$node(
      {required this.id, required this.text, required this.$__typename});

  @override
  factory QuerytaskList$viewer$user$tasks$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$QuerytaskList$viewer$user$tasks$edges$nodeFromJson(json);

  final String id;

  final String text;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QuerytaskList$viewer$user$tasks$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$text, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerytaskList$viewer$user$tasks$edges$node) ||
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

extension UtilityExtensionQuerytaskList$viewer$user$tasks$edges$node
    on QuerytaskList$viewer$user$tasks$edges$node {
  QuerytaskList$viewer$user$tasks$edges$node copyWith(
          {String? id, String? text, String? $__typename}) =>
      QuerytaskList$viewer$user$tasks$edges$node(
          id: id == null ? this.id : id,
          text: text == null ? this.text : text,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
