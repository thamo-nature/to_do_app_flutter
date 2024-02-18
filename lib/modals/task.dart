class Task {
  final String userTask;
  bool isUserFinished;

  Task({required this.userTask, required this.isUserFinished});

  void toggleisUserFinished() {
    isUserFinished = !isUserFinished;
  }
}
