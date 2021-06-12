class Todo {
  String title;
  bool finished;

  Todo({
    required this.title,
    required this.finished,
  });

  void setFinished(bool newValue) {
    finished = newValue;
  }
}
