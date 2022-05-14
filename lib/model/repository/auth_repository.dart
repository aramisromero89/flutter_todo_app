import 'package:flutter_todo_app/model/api/api_client.dart';
import 'package:flutter_todo_app/model/api/graphql/operations/signin.graphql.dart';
import 'package:flutter_todo_app/model/api/graphql/operations/signout.graphql.dart';
import 'package:flutter_todo_app/model/api/graphql/operations/signup.graphql.dart';
import 'package:flutter_todo_app/model/entity/session.dart';
import 'package:get_it/get_it.dart';

class AuthRepository {
  final _apiClient = GetIt.I<GraphqlApiClient>();

  Future<Session?> signIn(String username, String password) async {
    final res = await _apiClient.mutate<MutationsignIn>(OptionsMutationsignIn(variables: VariablesMutationsignIn(username: username, password: password)));
    return Session.fromFragment(res.logIn!.viewer);
  }

  Future<bool> signOut() async {
    final res = await _apiClient.mutate<MutationsignOut>(OptionsMutationsignOut());
    return res.logOut!.ok;
  }

  Future<Session?> signUp(String username, String password) async {
    final res = await _apiClient.mutate<MutationsignUp>(OptionsMutationsignUp(variables: VariablesMutationsignUp(username: username, password: password)));
    return Session.fromFragment(res.signUp!.viewer);
  }
}
