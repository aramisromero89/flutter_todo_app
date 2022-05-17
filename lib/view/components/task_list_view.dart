import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/provider/task_provider.dart';
import 'package:flutter_todo_app/view/components/task_edit_view.dart';
import 'package:flutter_todo_app/view/components/task_list_item_view.dart';
import 'package:flutter_todo_app/view/view_utils.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GetIt.I<TaskProvider>(),
      child: Consumer<TaskProvider>(
        builder: (context, provider, child) {
          return ListView(
            children: [
              provider.refreshing
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : IconButton(
                      onPressed: () async {
                        try {
                          await provider.refresh();
                        } catch (e) {
                          ViewUtils.showSnackBar(context, e.toString());
                        }
                      },
                      icon: const Icon(Icons.refresh)),
              provider.creatingTask
                  ? const TaskEditView()
                  : TextFormField(
                      onTap: () => GetIt.I<TaskProvider>().viewCreateTask(),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          FeatherIcons.plusSquare,
                          color: Theme.of(context).primaryColor,
                        ),
                        hintText: t.task.addHint,
                        contentPadding: const EdgeInsets.all(25.0),
                        border: InputBorder.none,
                      )),
              ...provider.tasks.map((e) => TaskListItem(task: e)).toList(),
            ],
          );
        },
      ),
    );
  }
}
