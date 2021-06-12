import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/todo.dart';
import 'package:todoey/state/app_state.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    var todo = context.select<AppState, Todo>(
      (state) => state.todos[index],
    );

    return ListTile(
      title: Text(
        todo.title,
        style: Theme.of(context).textTheme.headline6,
      ),
      trailing: Checkbox(
        value: todo.finished,
        onChanged: (newValue) {
          if (newValue != null) {
            todo.setFinished(newValue);
          }
        },
      ),
    );
  }
}
