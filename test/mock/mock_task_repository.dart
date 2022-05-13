import 'package:flutter_todo_app/model/entity/task.dart';
import 'package:flutter_todo_app/model/repository/task_repository.dart';

class MockTaskRepository extends TaskRepository {
  int _currentIndex = 0;
  final List<Task> _items = [];
  @override
  Future<List<Task>> create(String userId, String text) async {
    _items.add(Task(id: (_currentIndex++).toString(), text: text));
    return _items;
  }

  @override
  Future<Task?> delete(String taskId) async {
    final index = _items.indexWhere((task) => task.id == taskId);
    if (index < 0) {
      return null;
    }
    final item = _items[index];
    _items.removeAt(index);
    return item;
  }

  @override
  Future<Task?> edit(String taskId, String text) async {
    final index = _items.indexWhere((task) => task.id == taskId);
    if (index < 0) {
      return null;
    }
    _items.replaceRange(index, 1, [Task(id: taskId, text: text)]);
    return _items[index];
  }

  @override
  Future<List<Task>> list() async {
    return _items;
  }
}
