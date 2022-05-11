import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'signout.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class MutationsignOut {
  MutationsignOut({this.logOut, required this.$__typename});

  @override
  factory MutationsignOut.fromJson(Map<String, dynamic> json) =>
      _$MutationsignOutFromJson(json);

  final MutationsignOut$logOut? logOut;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationsignOutToJson(this);
  int get hashCode {
    final l$logOut = logOut;
    final l$$__typename = $__typename;
    return Object.hashAll([l$logOut, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignOut) || runtimeType != other.runtimeType)
      return false;
    final l$logOut = logOut;
    final lOther$logOut = other.logOut;
    if (l$logOut != lOther$logOut) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationsignOut on MutationsignOut {
  MutationsignOut copyWith(
          {MutationsignOut$logOut? Function()? logOut, String? $__typename}) =>
      MutationsignOut(
          logOut: logOut == null ? this.logOut : logOut(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATIONSIGN_OUT = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'signOut'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'logOut'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: []))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
]);
MutationsignOut _parserFnMutationsignOut(Map<String, dynamic> data) =>
    MutationsignOut.fromJson(data);
typedef OnMutationCompletedMutationsignOut = FutureOr<void> Function(
    dynamic, MutationsignOut?);

class OptionsMutationsignOut extends graphql.MutationOptions<MutationsignOut> {
  OptionsMutationsignOut(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationsignOut? onCompleted,
      graphql.OnMutationUpdate<MutationsignOut>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data, data == null ? null : _parserFnMutationsignOut(data)),
            update: update,
            onError: onError,
            document: MUTATIONSIGN_OUT,
            parserFn: _parserFnMutationsignOut);

  final OnMutationCompletedMutationsignOut? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationsignOut
    extends graphql.WatchQueryOptions<MutationsignOut> {
  WatchOptionsMutationsignOut(
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
            document: MUTATIONSIGN_OUT,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationsignOut);
}

extension ClientExtensionMutationsignOut on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationsignOut>> mutatesignOut(
          [OptionsMutationsignOut? options]) async =>
      await this.mutate(options ?? OptionsMutationsignOut());
  graphql.ObservableQuery<MutationsignOut> watchMutationsignOut(
          [WatchOptionsMutationsignOut? options]) =>
      this.watchMutation(options ?? WatchOptionsMutationsignOut());
}

@JsonSerializable(explicitToJson: true)
class MutationsignOut$logOut {
  MutationsignOut$logOut({required this.ok, required this.$__typename});

  @override
  factory MutationsignOut$logOut.fromJson(Map<String, dynamic> json) =>
      _$MutationsignOut$logOutFromJson(json);

  final bool ok;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationsignOut$logOutToJson(this);
  int get hashCode {
    final l$ok = ok;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ok, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationsignOut$logOut) || runtimeType != other.runtimeType)
      return false;
    final l$ok = ok;
    final lOther$ok = other.ok;
    if (l$ok != lOther$ok) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationsignOut$logOut on MutationsignOut$logOut {
  MutationsignOut$logOut copyWith({bool? ok, String? $__typename}) =>
      MutationsignOut$logOut(
          ok: ok == null ? this.ok : ok,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
