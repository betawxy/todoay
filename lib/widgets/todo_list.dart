import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/state/app_state.dart';
import 'package:todoey/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = context.select<AppState, int>(
      (appState) => appState.todos.length,
    );

    return ListView.builder(
      itemBuilder: (context, index) {
        return TodoItem(
          index: index,
        );
      },
      itemCount: count,
    );
  }
}
