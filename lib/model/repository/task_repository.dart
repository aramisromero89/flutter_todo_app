import 'package:flutter_todo_app/model/api/api_client.dart';
import 'package:flutter_todo_app/model/api/graphql/operations/task-create.graphql.dart';
import 'package:flutter_todo_app/model/api/graphql/operations/task-delete.graphql.dart';
import 'package:flutter_todo_app/model/api/graphql/operations/task-list.graphql.dart';
import 'package:flutter_todo_app/model/api/graphql/operations/task-update.graphql.dart';
import 'package:flutter_todo_app/model/entity/task.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

class TaskRepository {
  final _apiClient = GetIt.I<GraphqlApiClient>();

  Future<List<Task>> create(String userId, String text) async {
    final res = await _apiClient.mutate<MutationtaskCreate>(OptionsMutationtaskCreate(variables: VariablesMutationtaskCreate(text: text, userId: userId)));

    return res.updateUser!.user.tasks.edges!.map((e) => Task.fromFragment(e!.node!)).toList();
  }

  Future<Task?> delete(String taskId) async {
    final res = await _apiClient.mutate<MutationtaskDelete>(OptionsMutationtaskDelete(variables: VariablesMutationtaskDelete(taskId: taskId)));

    return Task.fromFragment(res.deleteTask!.task);
  }

  Future<Task?> edit(String taskId, String text) async {
    final res = await _apiClient.mutate<MutationtaskUpdate>(OptionsMutationtaskUpdate(variables: VariablesMutationtaskUpdate(taskId: taskId, text: text)));

    return Task.fromFragment(res.updateTask!.task);
  }

  Future<List<Task>> list() async {
    final res = await _apiClient.query<QuerytaskList>(OptionsQuerytaskList(fetchPolicy: FetchPolicy.networkOnly));

    return res.viewer.user.tasks.edges!.map((e) => Task.fromFragment(e!.node!)).toList();
  }
}
