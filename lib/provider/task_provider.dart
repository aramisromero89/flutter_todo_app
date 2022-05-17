import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/model/entity/task.dart';
import 'package:flutter_todo_app/model/repository/task_repository.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:get_it/get_it.dart';

class TaskProvider extends ChangeNotifier {
  final _authProvider = GetIt.I<AuthProvider>();

  final _repository = GetIt.I<TaskRepository>();

  bool _refreshing = false;
  bool get refreshing => _refreshing;

  String? _editingTaskId;
  String? get editingTaskId => _editingTaskId;

  bool _creatingTask = false;
  bool get creatingTask => _creatingTask;

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

  void viewCreateTask() {
    _creatingTask = true;
    _editingTaskId = null;
    notifyListeners();
  }

  void viewEditTask(String id) {
    _creatingTask = false;
    _editingTaskId = id;
    notifyListeners();
  }

  void cancelEdition() {
    _creatingTask = false;
    _editingTaskId = null;
    notifyListeners();
  }

  Future<void> refresh({List<Task>? list}) async {
    _refreshing = true;
    notifyListeners();
    try {
      _tasks.clear();
      if (list != null) {
        _tasks.addAll(list);
      } else if (_authProvider.session != null) {
        final res = await _repository.list();
        _tasks.addAll(res);
      }
    } catch (e) {
      _refreshing = false;
      cancelEdition();
      rethrow;
    }

    _refreshing = false;
    cancelEdition();
  }

  Future<void> addTask(String text) async {
    if (_authProvider.session != null) {
      List<Task> res = await _repository.create(_authProvider.session!.userId, text);
      if (res.isNotEmpty) {
        refresh(list: res);
      }
    }
  }

  Future<void> removeTask(String taskId) async {
    final res = await _repository.delete(taskId);
    if (res != null) {
      _tasks.removeWhere((element) => element.id == res.id);
      cancelEdition();
    }
  }

  Future<void> editTask(String taskId, String text) async {
    final res = await _repository.edit(taskId, text);
    if (res != null) {
      final index = _tasks.indexWhere((element) => element.id == res.id);
      _tasks.fillRange(index, 1, res);
    }
    cancelEdition();
  }
}
