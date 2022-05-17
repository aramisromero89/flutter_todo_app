import 'dart:convert';

import 'package:flutter_todo_app/model/api/graphql/fragments/session.graphql.dart';

class Session {
  final String userId;
  final String userName;
  final String token;

  Session({required this.userId, required this.userName, required this.token});

  String toJsonString() {
    return jsonEncode({
      "userId": userId,
      "userName": userName,
      "token": token,
    });
  }

  static Session fromFragment(FragmentSessionFragment fragment) =>
      Session(userId: fragment.user.id, userName: fragment.user.username!, token: fragment.sessionToken);

  static Session fromJsonString(String json) {
    final jsonObject = jsonDecode(json);
    return Session(
      userId: jsonObject["userId"],
      userName: jsonObject["userName"],
      token: jsonObject["token"],
    );
  }
}
