import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:mobx/mobx.dart';
import 'package:simple_pomodoro/pomodoro/models/task_model.dart';
import 'package:simple_pomodoro/pomodoro/models/timer_data.dart';

part 'pomodoro_store.g.dart';

enum TimerType { focus, rest, longRest }

const Map<TimerType, TimerData> timerDataOptions = <TimerType, TimerData>{
  TimerType.focus: TimerData(
    color: Colors.deepPurpleAccent,
    maxTime: 1500,
    label: "Focus Time",
  ),
  TimerType.rest: TimerData(
    color: Colors.blue,
    maxTime: 300,
    label: "Short Rest",
  ),
  TimerType.longRest: TimerData(
    color: Colors.teal,
    maxTime: 900,
    label: "Long Rest",
  ),
};

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  Timer? _timer;

  @observable
  int countdownTime = 0;

  @observable
  ObservableList<TaskModel> tasks = ObservableList<TaskModel>();

  @observable
  bool isTimeRunning = false;

  @observable
  bool isShowTaskField = false;

  @observable
  TimerType timerType = TimerType.focus;

  @computed
  TimerData get timerData => timerDataOptions[timerType]!;

  @computed
  double get circularProgressValue =>
      !isTimeRunning ? 0 : 1 - (countdownTime / timerData.maxTime);

  @computed
  Color get buttonColor => isTimeRunning ? Colors.red : timerData.color;

  @action
  void setCountdownTime(int value) {
    countdownTime = value;
  }

  @action
  void setIsShowTaskField(bool value) {
    isShowTaskField = value;
  }

  @action
  void setIsTimeRunning(bool value) {
    isTimeRunning = value;
  }

  @action
  void addTask(String task) {
    tasks.add(TaskModel(title: task));
  }

  @action
  void toggleCompleteTask(int index) {
    tasks[index] = tasks[index].copyWith(
      isDone: !tasks[index].isDone,
    );
  }

  @action
  void removeTask(TaskModel task) {
    tasks.remove(task);
  }

  @action
  void setTimerType(TimerType? type) {
    if (isTimeRunning || type == null) {
      return;
    }

    timerType = type;

    setCountdownTime(timerData.maxTime);
  }

  @action
  void startTimer(int time) {
    if (isTimeRunning) {
      return;
    }

    setIsTimeRunning(true);

    playStartSound();

    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (countdownTime > 0) {
          setCountdownTime(countdownTime -= 1);
        } else {
          stopTimer();
        }
      },
    );
  }

  @action
  void stopTimer() {
    _timer?.cancel();

    setIsTimeRunning(false);

    setCountdownTime(timerData.maxTime);

    playStopSound();
  }

  @action
  void playStopSound() {
    FlutterRingtonePlayer().play(
      fromAsset: "assets/sounds/stop.mp3",
      looping: false,
      volume: 1.0,
      asAlarm: false,
    );
  }

  @action
  void playStartSound() {
    FlutterRingtonePlayer().play(
      fromAsset: "assets/sounds/start.mp3",
      looping: false,
      volume: 1.0,
      asAlarm: false,
    );
  }
}
