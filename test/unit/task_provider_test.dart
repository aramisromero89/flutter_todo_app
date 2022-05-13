import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:flutter_todo_app/provider/task_provider.dart';
import 'package:get_it/get_it.dart';
import '../mock/mock_dependency.dart';

main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await mockDependencies();
  final provider = GetIt.I<TaskProvider>();
  group("TaskProvider", () {
    test('add task', () async {
      await GetIt.I<AuthProvider>().signIn("a", "b");
      await provider.addTask("a");
      expect(provider.tasks.last.text, equals("a"));
    });

    test('refresh', () async {
      expect(provider.tasks.length, equals(1));
    });

    test('edit', () async {
      final task = provider.tasks[0];
      await provider.editTask(task.id, "c");
      expect(provider.tasks[0].text, equals("c"));
    });

    test('remove', () async {
      final task = provider.tasks[0];
      await provider.removeTask(task.id);
      expect(provider.tasks.length, equals(0));
    });
  });
}
