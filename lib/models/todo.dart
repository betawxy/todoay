class Todo {
  String title;
  bool finished;

  Todo({
    required this.title,
    required this.finished,
  });

  void toggleFinished() {
    finished = !finished;
  }
}
