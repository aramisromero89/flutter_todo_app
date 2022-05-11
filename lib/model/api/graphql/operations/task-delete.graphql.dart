import '../fragments/task.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'task-delete.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationtaskDelete {
  VariablesMutationtaskDelete({required this.taskId});

  @override
  factory VariablesMutationtaskDelete.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationtaskDeleteFromJson(json);

  final String taskId;

  Map<String, dynamic> toJson() => _$VariablesMutationtaskDeleteToJson(this);
  int get hashCode {
    final l$taskId = taskId;
    return Object.hashAll([l$taskId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationtaskDelete) ||
        runtimeType != other.runtimeType) return false;
    final l$taskId = taskId;
    final lOther$taskId = other.taskId;
    if (l$taskId != lOther$taskId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationtaskDelete {
  MutationtaskDelete({this.deleteTask, required this.$__typename});

  @override
  factory MutationtaskDelete.fromJson(Map<String, dynamic> json) =>
      _$MutationtaskDeleteFromJson(json);

  final MutationtaskDelete$deleteTask? deleteTask;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationtaskDeleteToJson(this);
  int get hashCode {
    final l$deleteTask = deleteTask;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteTask, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskDelete) || runtimeType != other.runtimeType)
      return false;
    final l$deleteTask = deleteTask;
    final lOther$deleteTask = other.deleteTask;
    if (l$deleteTask != lOther$deleteTask) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskDelete on MutationtaskDelete {
  MutationtaskDelete copyWith(
          {MutationtaskDelete$deleteTask? Function()? deleteTask,
          String? $__typename}) =>
      MutationtaskDelete(
          deleteTask: deleteTask == null ? this.deleteTask : deleteTask(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATIONTASK_DELETE = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'taskDelete'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'taskId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteTask'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: VariableNode(name: NameNode(value: 'taskId')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'task'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'TaskFragment'), directives: []),
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
MutationtaskDelete _parserFnMutationtaskDelete(Map<String, dynamic> data) =>
    MutationtaskDelete.fromJson(data);
typedef OnMutationCompletedMutationtaskDelete = FutureOr<void> Function(
    dynamic, MutationtaskDelete?);

class OptionsMutationtaskDelete
    extends graphql.MutationOptions<MutationtaskDelete> {
  OptionsMutationtaskDelete(
      {String? operationName,
      required VariablesMutationtaskDelete variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationtaskDelete? onCompleted,
      graphql.OnMutationUpdate<MutationtaskDelete>? update,
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
                    data == null ? null : _parserFnMutationtaskDelete(data)),
            update: update,
            onError: onError,
            document: MUTATIONTASK_DELETE,
            parserFn: _parserFnMutationtaskDelete);

  final OnMutationCompletedMutationtaskDelete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationtaskDelete
    extends graphql.WatchQueryOptions<MutationtaskDelete> {
  WatchOptionsMutationtaskDelete(
      {String? operationName,
      required VariablesMutationtaskDelete variables,
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
            document: MUTATIONTASK_DELETE,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationtaskDelete);
}

extension ClientExtensionMutationtaskDelete on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationtaskDelete>> mutatetaskDelete(
          OptionsMutationtaskDelete options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationtaskDelete> watchMutationtaskDelete(
          WatchOptionsMutationtaskDelete options) =>
      this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskDelete$deleteTask {
  MutationtaskDelete$deleteTask(
      {required this.task, required this.$__typename});

  @override
  factory MutationtaskDelete$deleteTask.fromJson(Map<String, dynamic> json) =>
      _$MutationtaskDelete$deleteTaskFromJson(json);

  final MutationtaskDelete$deleteTask$task task;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationtaskDelete$deleteTaskToJson(this);
  int get hashCode {
    final l$task = task;
    final l$$__typename = $__typename;
    return Object.hashAll([l$task, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskDelete$deleteTask) ||
        runtimeType != other.runtimeType) return false;
    final l$task = task;
    final lOther$task = other.task;
    if (l$task != lOther$task) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskDelete$deleteTask
    on MutationtaskDelete$deleteTask {
  MutationtaskDelete$deleteTask copyWith(
          {MutationtaskDelete$deleteTask$task? task, String? $__typename}) =>
      MutationtaskDelete$deleteTask(
          task: task == null ? this.task : task,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskDelete$deleteTask$task implements FragmentTaskFragment {
  MutationtaskDelete$deleteTask$task(
      {required this.id, required this.text, required this.$__typename});

  @override
  factory MutationtaskDelete$deleteTask$task.fromJson(
          Map<String, dynamic> json) =>
      _$MutationtaskDelete$deleteTask$taskFromJson(json);

  final String id;

  final String text;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationtaskDelete$deleteTask$taskToJson(this);
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$text, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskDelete$deleteTask$task) ||
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

extension UtilityExtensionMutationtaskDelete$deleteTask$task
    on MutationtaskDelete$deleteTask$task {
  MutationtaskDelete$deleteTask$task copyWith(
          {String? id, String? text, String? $__typename}) =>
      MutationtaskDelete$deleteTask$task(
          id: id == null ? this.id : id,
          text: text == null ? this.text : text,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
