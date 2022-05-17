import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/model/entity/task.dart';
import 'package:flutter_todo_app/provider/task_edit_provider.dart';
import 'package:flutter_todo_app/view/view_utils.dart';
import 'package:provider/provider.dart';

class TaskEditView extends StatelessWidget {
  final Task? task;
  const TaskEditView({Key? key, this.task}) : super(key: key);

  Widget _widget() {
    return Consumer<TaskEditProvider>(
      builder: (context, provider, child) {
        return Card(
          elevation: 5,
          child: Column(children: [
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  FeatherIcons.plusSquare,
                  color: Theme.of(context).primaryColor,
                ),
                hintText: task == null ? t.task.addHint : "",
                contentPadding: const EdgeInsets.all(25.0),
                border: InputBorder.none,
              ),
              controller: provider.textController,
            ),
            const Divider(),
            provider.submiting
                ? const Padding(
                    padding: EdgeInsets.all(10),
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    color: const Color.fromRGBO(250, 251, 251, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          task == null
                              ? Container()
                              : ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                                  ),
                                  onPressed: () => provider.submit(deleteAction: true),
                                  child: const Icon(FeatherIcons.trash2),
                                ),
                          Expanded(child: Container()),
                          _mainButton(),
                        ],
                      ),
                    ),
                  ),
          ]),
        );
      },
    );
  }

  Widget _mainButton() {
    return Consumer<TaskEditProvider>(
      builder: (context, provider, child) {
        return ElevatedButton(
          onPressed: () {
            try {
              provider.submit();
            } catch (e) {
              ViewUtils.showSnackBar(context, e.toString());
            }
          },
          child: Icon(provider.buttonIconData),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskEditProvider(editTask: task),
      child: _widget(),
    );
  }
}
