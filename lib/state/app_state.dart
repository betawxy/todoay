import 'dart:collection';

import 'package:todoey/models/todo.dart';

class AppState {
  List<Todo> _todos = [];

  UnmodifiableListView get todos {
    return UnmodifiableListView(_todos);
  }
}
