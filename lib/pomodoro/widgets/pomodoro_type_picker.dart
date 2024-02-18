part of 'pomodoro_screen.dart';

class PomodoroTypePicker extends StatelessWidget {
  const PomodoroTypePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Observer(
          builder: (_) {
            return CupertinoSlidingSegmentedControl<TimerType>(
              backgroundColor: Colors.grey.shade300,
              thumbColor: store.timerData.color,
              groupValue: store.timerType,
              onValueChanged: store.setTimerType,
              children: _buildSegmentedItems(),
            );
          },
        ),
      ),
    );
  }

  Map<TimerType, Widget> _buildSegmentedItems() {
    return const <TimerType, Widget>{
      TimerType.focus: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'Focus',
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      TimerType.rest: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'Rest',
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      TimerType.longRest: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'Longrest',
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
    };
  }
}
