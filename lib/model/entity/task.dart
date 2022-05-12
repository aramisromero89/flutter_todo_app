import 'package:flutter_todo_app/model/api/graphql/fragments/task.graphql.dart';

class Task {
  final String id;
  final String text;
  Task({required this.id, required this.text});

  static Task fromFragment(FragmentTaskFragment fragment) => Task(id: fragment.id, text: fragment.text);
}
