import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:simple_pomodoro/pomodoro/widgets/pomodoro_screen.dart';
import 'package:simple_pomodoro/pomodoro/pomodoro_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => PomodoroStore()..setTimerType(TimerType.focus),
        ),
      ],
      child: MaterialApp(
        title: 'Simple Pomodoro App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PomodoroScreen(),
      ),
    );
  }
}
