import 'package:flutter/material.dart';
import 'package:todoey/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TodoItem();
      },
      itemCount: 3,
    );
  }
}
