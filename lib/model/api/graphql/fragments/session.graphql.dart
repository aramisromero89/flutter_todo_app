import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'user.graphql.dart';
part 'session.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentSessionFragment {
  FragmentSessionFragment(
      {required this.user,
      required this.sessionToken,
      required this.$__typename});

  @override
  factory FragmentSessionFragment.fromJson(Map<String, dynamic> json) =>
      _$FragmentSessionFragmentFromJson(json);

  final FragmentSessionFragment$user user;

  final String sessionToken;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$FragmentSessionFragmentToJson(this);
  int get hashCode {
    final l$user = user;
    final l$sessionToken = sessionToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$sessionToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentSessionFragment) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtensionFragmentSessionFragment on FragmentSessionFragment {
  FragmentSessionFragment copyWith(
          {FragmentSessionFragment$user? user,
          String? sessionToken,
          String? $__typename}) =>
      FragmentSessionFragment(
          user: user == null ? this.user : user,
          sessionToken: sessionToken == null ? this.sessionToken : sessionToken,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const FRAGMENT_DEFINITION_FRAGMENT_SESSION_FRAGMENT =
    const FragmentDefinitionNode(
        name: NameNode(value: 'SessionFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Viewer'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'user'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'UserFragment'), directives: []),
                FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'sessionToken'),
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
const FRAGMENT_SESSION_FRAGMENT = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_SESSION_FRAGMENT,
  FRAGMENT_DEFINITION_FRAGMENT_USER_FRAGMENT,
]);

extension ClientExtensionFragmentSessionFragment on graphql.GraphQLClient {
  void writeFragmentSessionFragment(
          {required FragmentSessionFragment data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'SessionFragment',
                  document: FRAGMENT_SESSION_FRAGMENT)),
          data: data.toJson(),
          broadcast: broadcast);
  FragmentSessionFragment? readFragmentSessionFragment(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'SessionFragment',
                document: FRAGMENT_SESSION_FRAGMENT)),
        optimistic: optimistic);
    return result == null ? null : FragmentSessionFragment.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class FragmentSessionFragment$user implements FragmentUserFragment {
  FragmentSessionFragment$user(
      {required this.id,
      this.username,
      this.avatar,
      required this.$__typename});

  @override
  factory FragmentSessionFragment$user.fromJson(Map<String, dynamic> json) =>
      _$FragmentSessionFragment$userFromJson(json);

  final String id;

  final String? username;

  final String? avatar;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$FragmentSessionFragment$userToJson(this);
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
    if (!(other is FragmentSessionFragment$user) ||
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

extension UtilityExtensionFragmentSessionFragment$user
    on FragmentSessionFragment$user {
  FragmentSessionFragment$user copyWith(
          {String? id,
          String? Function()? username,
          String? Function()? avatar,
          String? $__typename}) =>
      FragmentSessionFragment$user(
          id: id == null ? this.id : id,
          username: username == null ? this.username : username(),
          avatar: avatar == null ? this.avatar : avatar(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
