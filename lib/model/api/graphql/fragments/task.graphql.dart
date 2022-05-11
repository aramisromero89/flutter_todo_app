import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'task.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentTaskFragment {
  FragmentTaskFragment(
      {required this.id, required this.text, required this.$__typename});

  @override
  factory FragmentTaskFragment.fromJson(Map<String, dynamic> json) =>
      _$FragmentTaskFragmentFromJson(json);

  final String id;

  final String text;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$FragmentTaskFragmentToJson(this);
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$text, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentTaskFragment) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtensionFragmentTaskFragment on FragmentTaskFragment {
  FragmentTaskFragment copyWith(
          {String? id, String? text, String? $__typename}) =>
      FragmentTaskFragment(
          id: id == null ? this.id : id,
          text: text == null ? this.text : text,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const FRAGMENT_DEFINITION_FRAGMENT_TASK_FRAGMENT = const FragmentDefinitionNode(
    name: NameNode(value: 'TaskFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Task'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'text'),
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
    ]));
const FRAGMENT_TASK_FRAGMENT = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_TASK_FRAGMENT,
]);

extension ClientExtensionFragmentTaskFragment on graphql.GraphQLClient {
  void writeFragmentTaskFragment(
          {required FragmentTaskFragment data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'TaskFragment',
                  document: FRAGMENT_TASK_FRAGMENT)),
          data: data.toJson(),
          broadcast: broadcast);
  FragmentTaskFragment? readFragmentTaskFragment(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'TaskFragment',
                document: FRAGMENT_TASK_FRAGMENT)),
        optimistic: optimistic);
    return result == null ? null : FragmentTaskFragment.fromJson(result);
  }
}
