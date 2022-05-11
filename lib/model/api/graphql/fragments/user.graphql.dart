import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'user.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentUserFragment {
  FragmentUserFragment(
      {required this.id,
      this.username,
      this.avatar,
      required this.$__typename});

  @override
  factory FragmentUserFragment.fromJson(Map<String, dynamic> json) =>
      _$FragmentUserFragmentFromJson(json);

  final String id;

  final String? username;

  final String? avatar;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$FragmentUserFragmentToJson(this);
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
    if (!(other is FragmentUserFragment) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtensionFragmentUserFragment on FragmentUserFragment {
  FragmentUserFragment copyWith(
          {String? id,
          String? Function()? username,
          String? Function()? avatar,
          String? $__typename}) =>
      FragmentUserFragment(
          id: id == null ? this.id : id,
          username: username == null ? this.username : username(),
          avatar: avatar == null ? this.avatar : avatar(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const FRAGMENT_DEFINITION_FRAGMENT_USER_FRAGMENT = const FragmentDefinitionNode(
    name: NameNode(value: 'UserFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'username'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'avatar'),
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
const FRAGMENT_USER_FRAGMENT = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_USER_FRAGMENT,
]);

extension ClientExtensionFragmentUserFragment on graphql.GraphQLClient {
  void writeFragmentUserFragment(
          {required FragmentUserFragment data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'UserFragment',
                  document: FRAGMENT_USER_FRAGMENT)),
          data: data.toJson(),
          broadcast: broadcast);
  FragmentUserFragment? readFragmentUserFragment(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'UserFragment',
                document: FRAGMENT_USER_FRAGMENT)),
        optimistic: optimistic);
    return result == null ? null : FragmentUserFragment.fromJson(result);
  }
}
