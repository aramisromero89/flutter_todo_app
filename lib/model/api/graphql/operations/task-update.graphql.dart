import '../fragments/task.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'task-update.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationtaskUpdate {
  VariablesMutationtaskUpdate({required this.taskId, required this.text});

  @override
  factory VariablesMutationtaskUpdate.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationtaskUpdateFromJson(json);

  final String taskId;

  final String text;

  Map<String, dynamic> toJson() => _$VariablesMutationtaskUpdateToJson(this);
  int get hashCode {
    final l$taskId = taskId;
    final l$text = text;
    return Object.hashAll([l$taskId, l$text]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationtaskUpdate) ||
        runtimeType != other.runtimeType) return false;
    final l$taskId = taskId;
    final lOther$taskId = other.taskId;
    if (l$taskId != lOther$taskId) return false;
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationtaskUpdate {
  MutationtaskUpdate({this.updateTask, required this.$__typename});

  @override
  factory MutationtaskUpdate.fromJson(Map<String, dynamic> json) =>
      _$MutationtaskUpdateFromJson(json);

  final MutationtaskUpdate$updateTask? updateTask;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationtaskUpdateToJson(this);
  int get hashCode {
    final l$updateTask = updateTask;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateTask, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskUpdate) || runtimeType != other.runtimeType)
      return false;
    final l$updateTask = updateTask;
    final lOther$updateTask = other.updateTask;
    if (l$updateTask != lOther$updateTask) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationtaskUpdate on MutationtaskUpdate {
  MutationtaskUpdate copyWith(
          {MutationtaskUpdate$updateTask? Function()? updateTask,
          String? $__typename}) =>
      MutationtaskUpdate(
          updateTask: updateTask == null ? this.updateTask : updateTask(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATIONTASK_UPDATE = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'taskUpdate'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'taskId')),
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
            name: NameNode(value: 'updateTask'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: VariableNode(name: NameNode(value: 'taskId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'fields'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'text'),
                              value:
                                  VariableNode(name: NameNode(value: 'text')))
                        ]))
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
MutationtaskUpdate _parserFnMutationtaskUpdate(Map<String, dynamic> data) =>
    MutationtaskUpdate.fromJson(data);
typedef OnMutationCompletedMutationtaskUpdate = FutureOr<void> Function(
    dynamic, MutationtaskUpdate?);

class OptionsMutationtaskUpdate
    extends graphql.MutationOptions<MutationtaskUpdate> {
  OptionsMutationtaskUpdate(
      {String? operationName,
      required VariablesMutationtaskUpdate variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationtaskUpdate? onCompleted,
      graphql.OnMutationUpdate<MutationtaskUpdate>? update,
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
                    data == null ? null : _parserFnMutationtaskUpdate(data)),
            update: update,
            onError: onError,
            document: MUTATIONTASK_UPDATE,
            parserFn: _parserFnMutationtaskUpdate);

  final OnMutationCompletedMutationtaskUpdate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationtaskUpdate
    extends graphql.WatchQueryOptions<MutationtaskUpdate> {
  WatchOptionsMutationtaskUpdate(
      {String? operationName,
      required VariablesMutationtaskUpdate variables,
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
            document: MUTATIONTASK_UPDATE,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationtaskUpdate);
}

extension ClientExtensionMutationtaskUpdate on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationtaskUpdate>> mutatetaskUpdate(
          OptionsMutationtaskUpdate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationtaskUpdate> watchMutationtaskUpdate(
          WatchOptionsMutationtaskUpdate options) =>
      this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskUpdate$updateTask {
  MutationtaskUpdate$updateTask(
      {required this.task, required this.$__typename});

  @override
  factory MutationtaskUpdate$updateTask.fromJson(Map<String, dynamic> json) =>
      _$MutationtaskUpdate$updateTaskFromJson(json);

  final MutationtaskUpdate$updateTask$task task;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationtaskUpdate$updateTaskToJson(this);
  int get hashCode {
    final l$task = task;
    final l$$__typename = $__typename;
    return Object.hashAll([l$task, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskUpdate$updateTask) ||
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

extension UtilityExtensionMutationtaskUpdate$updateTask
    on MutationtaskUpdate$updateTask {
  MutationtaskUpdate$updateTask copyWith(
          {MutationtaskUpdate$updateTask$task? task, String? $__typename}) =>
      MutationtaskUpdate$updateTask(
          task: task == null ? this.task : task,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class MutationtaskUpdate$updateTask$task implements FragmentTaskFragment {
  MutationtaskUpdate$updateTask$task(
      {required this.id, required this.text, required this.$__typename});

  @override
  factory MutationtaskUpdate$updateTask$task.fromJson(
          Map<String, dynamic> json) =>
      _$MutationtaskUpdate$updateTask$taskFromJson(json);

  final String id;

  final String text;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationtaskUpdate$updateTask$taskToJson(this);
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$text, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationtaskUpdate$updateTask$task) ||
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

extension UtilityExtensionMutationtaskUpdate$updateTask$task
    on MutationtaskUpdate$updateTask$task {
  MutationtaskUpdate$updateTask$task copyWith(
          {String? id, String? text, String? $__typename}) =>
      MutationtaskUpdate$updateTask$task(
          id: id == null ? this.id : id,
          text: text == null ? this.text : text,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
