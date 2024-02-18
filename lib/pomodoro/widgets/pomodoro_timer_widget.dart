part of 'pomodoro_screen.dart';

class PomodoroTimerWidget extends StatelessWidget {
  const PomodoroTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        final color = store.timerData.color;

        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          width: 300,
          height: 300,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                strokeWidth: 6,
                valueColor: AlwaysStoppedAnimation(color),
                backgroundColor: Colors.grey.shade100,
                value: store.circularProgressValue,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      store.countdownTime.toDuration(),
                      style: TextStyle(
                        fontSize: 65,
                        color: color,
                      ),
                    ),
                    Text(
                      store.timerData.label,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
