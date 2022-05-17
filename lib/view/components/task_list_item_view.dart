import 'package:flutter/material.dart';
import 'package:flutter_todo_app/model/entity/task.dart';
import 'package:flutter_todo_app/provider/task_provider.dart';
import 'package:flutter_todo_app/view/components/task_edit_view.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class TaskListItem extends StatelessWidget {
  final Task task;
  const TaskListItem({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: ((context, provider, child) {
      if (provider.editingTaskId == task.id) {
        return TaskEditView(
          task: task,
        );
      }
      return InkWell(
        onTap: () => GetIt.I<TaskProvider>().viewEditTask(task.id),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const Icon(Icons.crop_square_rounded),
              Text(task.text),
            ],
          ),
        ),
      );
    }));
  }
}
