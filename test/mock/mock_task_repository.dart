import 'package:flutter_todo_app/model/entity/task.dart';
import 'package:flutter_todo_app/model/repository/task_repository.dart';

class MockTaskRepository extends TaskRepository {
  @override
  Future<List<Task>> create(String userId, String text) async {
    return [Task(id: "a", text: text)];
  }

  @override
  Future<Task?> delete(String taskId) async {
    return Task(id: taskId, text: "a");
  }

  @override
  Future<Task?> edit(String taskId, String text) async {
    return Task(id: taskId, text: text);
  }

  @override
  Future<List<Task>> list() async {
    return [];
  }
}
