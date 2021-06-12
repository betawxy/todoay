import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/models/todo.dart';

class AppState extends ChangeNotifier {
  List<Todo> _todos = [];

  UnmodifiableListView get todos {
    return UnmodifiableListView(_todos);
  }

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }
}
