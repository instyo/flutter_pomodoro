import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_pomodoro/extensions/int_extension.dart';
import 'package:simple_pomodoro/pomodoro/models/task_model.dart';
import 'package:simple_pomodoro/pomodoro/pomodoro_store.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part 'pomodoro_task_list.dart';
part 'pomodoro_timer_button.dart';
part 'pomodoro_timer_widget.dart';
part 'pomodoro_type_picker.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pomodoro"),
        actions: [
          IconButton(
            onPressed: () => openTasks(context),
            icon: const Icon(Icons.assignment_outlined),
          )
        ],
      ),
      body: const SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PomodoroTimerWidget(),
            SizedBox(height: 20),
            PomodoroTimerButton()
          ],
        ),
      ),
      bottomNavigationBar: const PomodoroTypePicker(),
    );
  }

  Future<void> openTasks(BuildContext context) async {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: (BuildContext context) {
        return const PomodoroTaskList();
      },
    );
  }
}
