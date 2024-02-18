class TaskModel {
  final String title;
  final bool isDone;

  const TaskModel({
    required this.title,
    this.isDone = false,
  });

  TaskModel copyWith({
    String? title,
    bool? isDone,
  }) {
    return TaskModel(
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
    );
  }
}
