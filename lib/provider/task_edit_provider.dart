import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_todo_app/model/entity/task.dart';
import 'package:flutter_todo_app/provider/task_provider.dart';
import 'package:get_it/get_it.dart';

enum MainButtonActionType { add, update, cancel }

class TaskEditProvider extends ChangeNotifier {
  bool submiting = false;
  String? taskId;
  IconData buttonIconData = FeatherIcons.plus;
  Future<void> Function()? submitFunction;
  final textController = TextEditingController();
  MainButtonActionType mainButtonAction = MainButtonActionType.add;

  TaskEditProvider({Task? editTask}) {
    textController.addListener(onTextValueChanged);
    if (editTask != null) {
      taskId = editTask.id;
      textController.text = editTask.text;
    }
    onTextValueChanged();
  }

  @override
  void dispose() {
    super.dispose();
    textController.removeListener(onTextValueChanged);
  }

  onTextValueChanged() {
    if (textController.text.isEmpty) {
      buttonIconData = FeatherIcons.x;
      mainButtonAction = MainButtonActionType.cancel;
      submitFunction = () async {
        GetIt.I<TaskProvider>().cancelEdition();
      };
    } else if (taskId != null) {
      buttonIconData = FeatherIcons.save;
      mainButtonAction = MainButtonActionType.update;
      submitFunction = () async {
        GetIt.I<TaskProvider>().editTask(taskId!, textController.text);
      };
    } else {
      buttonIconData = FeatherIcons.plus;
      mainButtonAction = MainButtonActionType.add;
      submitFunction = () async {
        GetIt.I<TaskProvider>().addTask(textController.text);
      };
    }
    notifyListeners();
  }

  void cancel() {
    GetIt.I<TaskProvider>().cancelEdition();
  }

  submit({deleteAction = false}) async {
    submiting = true;
    notifyListeners();
    try {
      if (deleteAction) {
        await GetIt.I<TaskProvider>().removeTask(taskId!);
      } else {
        await submitFunction!();
      }
    } catch (e) {
      submiting = true;
      notifyListeners();
      rethrow;
    }
  }
}
