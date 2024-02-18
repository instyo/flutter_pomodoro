// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  Computed<TimerData>? _$timerDataComputed;

  @override
  TimerData get timerData =>
      (_$timerDataComputed ??= Computed<TimerData>(() => super.timerData,
              name: '_PomodoroStore.timerData'))
          .value;
  Computed<double>? _$circularProgressValueComputed;

  @override
  double get circularProgressValue => (_$circularProgressValueComputed ??=
          Computed<double>(() => super.circularProgressValue,
              name: '_PomodoroStore.circularProgressValue'))
      .value;
  Computed<Color>? _$buttonColorComputed;

  @override
  Color get buttonColor =>
      (_$buttonColorComputed ??= Computed<Color>(() => super.buttonColor,
              name: '_PomodoroStore.buttonColor'))
          .value;

  late final _$countdownTimeAtom =
      Atom(name: '_PomodoroStore.countdownTime', context: context);

  @override
  int get countdownTime {
    _$countdownTimeAtom.reportRead();
    return super.countdownTime;
  }

  @override
  set countdownTime(int value) {
    _$countdownTimeAtom.reportWrite(value, super.countdownTime, () {
      super.countdownTime = value;
    });
  }

  late final _$tasksAtom = Atom(name: '_PomodoroStore.tasks', context: context);

  @override
  ObservableList<TaskModel> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<TaskModel> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$isTimeRunningAtom =
      Atom(name: '_PomodoroStore.isTimeRunning', context: context);

  @override
  bool get isTimeRunning {
    _$isTimeRunningAtom.reportRead();
    return super.isTimeRunning;
  }

  @override
  set isTimeRunning(bool value) {
    _$isTimeRunningAtom.reportWrite(value, super.isTimeRunning, () {
      super.isTimeRunning = value;
    });
  }

  late final _$isShowTaskFieldAtom =
      Atom(name: '_PomodoroStore.isShowTaskField', context: context);

  @override
  bool get isShowTaskField {
    _$isShowTaskFieldAtom.reportRead();
    return super.isShowTaskField;
  }

  @override
  set isShowTaskField(bool value) {
    _$isShowTaskFieldAtom.reportWrite(value, super.isShowTaskField, () {
      super.isShowTaskField = value;
    });
  }

  late final _$timerTypeAtom =
      Atom(name: '_PomodoroStore.timerType', context: context);

  @override
  TimerType get timerType {
    _$timerTypeAtom.reportRead();
    return super.timerType;
  }

  @override
  set timerType(TimerType value) {
    _$timerTypeAtom.reportWrite(value, super.timerType, () {
      super.timerType = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void setCountdownTime(int value) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.setCountdownTime');
    try {
      return super.setCountdownTime(value);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsShowTaskField(bool value) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.setIsShowTaskField');
    try {
      return super.setIsShowTaskField(value);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsTimeRunning(bool value) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.setIsTimeRunning');
    try {
      return super.setIsTimeRunning(value);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTask(String task) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.addTask');
    try {
      return super.addTask(task);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleCompleteTask(int index) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.toggleCompleteTask');
    try {
      return super.toggleCompleteTask(index);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTask(TaskModel task) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.removeTask');
    try {
      return super.removeTask(task);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTimerType(TimerType? type) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.setTimerType');
    try {
      return super.setTimerType(type);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startTimer(int time) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.startTimer');
    try {
      return super.startTimer(time);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopTimer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stopTimer');
    try {
      return super.stopTimer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void playStopSound() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.playStopSound');
    try {
      return super.playStopSound();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void playStartSound() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.playStartSound');
    try {
      return super.playStartSound();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
countdownTime: ${countdownTime},
tasks: ${tasks},
isTimeRunning: ${isTimeRunning},
isShowTaskField: ${isShowTaskField},
timerType: ${timerType},
timerData: ${timerData},
circularProgressValue: ${circularProgressValue},
buttonColor: ${buttonColor}
    ''';
  }
}
