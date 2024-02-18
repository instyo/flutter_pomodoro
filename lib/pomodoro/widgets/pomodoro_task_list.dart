part of 'pomodoro_screen.dart';

class PomodoroTaskList extends StatelessWidget {
  const PomodoroTaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        return SizedBox(
          height: 400,
          width: double.maxFinite,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    for (final task in store.tasks)
                      _buildTaskItem(
                        task,
                        onRemove: () {
                          store.removeTask(task);
                        },
                        onToggleCompletion: (value) {
                          if (value != null) {
                            final index = store.tasks.indexOf(task);
                            store.toggleCompleteTask(index);
                          }
                        },
                      ),
                    if (store.isShowTaskField)
                      TextField(
                        decoration: const InputDecoration(
                          hintText: "Input a task",
                        ),
                        onSubmitted: (String? text) {
                          if (text != null && text.isNotEmpty) {
                            store.addTask(text);
                            store.setIsShowTaskField(false);
                          }
                        },
                      ),
                    if (!store.isShowTaskField)
                      TextButton.icon(
                        onPressed: () {
                          store.setIsShowTaskField(true);
                        },
                        icon: const Icon(Icons.add),
                        label: const Text("Add Task"),
                      )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTaskItem(
    TaskModel task, {
    required VoidCallback onRemove,
    required Function(bool?) onToggleCompletion,
  }) {
    return GestureDetector(
      onLongPress: onRemove,
      child: Row(
        children: [
          Expanded(
            child: Text(
              task.title,
              style: TextStyle(
                decoration: task.isDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ),
          Checkbox(
            value: task.isDone,
            onChanged: onToggleCompletion,
          )
        ],
      ),
    );
  }
}
