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
    var state = Provider.of<AppState>(context);
    Todo todo = state.todos[index];

    return ListTile(
      title: Text(
        todo.title,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              decoration: todo.finished
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
      ),
      trailing: Checkbox(
        value: todo.finished,
        onChanged: (newValue) {
          if (newValue != null) {
            state.updateTodo(todo, newValue);
          }
        },
      ),
    );
  }
}
