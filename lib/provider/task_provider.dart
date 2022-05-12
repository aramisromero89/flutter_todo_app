import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/model/entity/task.dart';
import 'package:flutter_todo_app/model/repository/task_repository.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:get_it/get_it.dart';

class TaskProvider extends ChangeNotifier {
  final _authProvider = GetIt.I<AuthProvider>();

  final _repository = TaskRepository();

  final List<Task> _tasks = [];

  List<Task> get tasks => List.unmodifiable(_tasks);

  TaskProvider() {
    _authProvider.addListener(refresh);
  }

  @override
  void dispose() {
    _authProvider.removeListener(refresh);
    super.dispose();
  }

  void refresh({List<Task>? list}) async {
    _tasks.clear();
    if (list != null) {
      _tasks.addAll(list);
    } else if (_authProvider.session != null) {
      final res = await _repository.list();
      _tasks.addAll(res);
    }
    notifyListeners();
  }

  void addTask(String text) async {
    if (_authProvider.session != null) {
      List<Task> res = await _repository.create(_authProvider.session!.userId, text);
      if (res.isNotEmpty) {
        refresh(list: res);
      }
    }
  }

  void removeTask(String taskId) async {
    final res = await _repository.delete(taskId);
    if (res != null) {
      _tasks.removeWhere((element) => element.id == res.id);
      notifyListeners();
    }
  }

  void editTask(String taskId, String text) async {
    final res = await _repository.edit(taskId, text);
    if (res != null) {
      final index = _tasks.indexWhere((element) => element.id == res.id);
      _tasks.fillRange(index, index, res);
    }
  }
}
