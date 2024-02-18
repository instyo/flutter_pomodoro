part of 'pomodoro_screen.dart';

class PomodoroTimerButton extends StatelessWidget {
  const PomodoroTimerButton({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: store.buttonColor,
          ),
          onPressed: () {
            store.isTimeRunning
                ? store.stopTimer()
                : store.startTimer(store.timerData.maxTime);
          },
          child: store.isTimeRunning
              ? const Text(
                  "STOP",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              : const Text(
                  "START",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
        );
      },
    );
  }
}
