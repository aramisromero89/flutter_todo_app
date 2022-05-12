import 'package:flutter_todo_app/model/api/graphql/fragments/session.graphql.dart';

class Session {
  final String userId;
  final String userName;
  final String avatar;
  final String token;

  Session({required this.userId, required this.userName, required this.avatar, required this.token});

  static Session fromFragment(FragmentSessionFragment fragment) =>
      Session(userId: fragment.user.id, userName: fragment.user.username!, avatar: fragment.user.avatar!, token: fragment.sessionToken);
}
