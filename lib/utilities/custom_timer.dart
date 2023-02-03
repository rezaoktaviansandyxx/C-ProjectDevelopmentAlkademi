import 'dart:async';

class CtsmTimer {
  late Timer _timer;
  int _seconds = 0;

  void startTimer() {
    _seconds = 0;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _seconds += 1;
    });
  }

  void endTimer() {
    _timer.cancel();
  }

  int getTimer() {
    return _seconds;
  }
}
