import 'package:flutter/material.dart';

import 'consts.dart';
import 'widgets/add_todo_item.dart';
import 'widgets/header.dart';
import 'widgets/todo_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Expanded(
            child: Container(
              decoration: kCurvedTopBoxDecoration,
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: TodoList(),
            ),
          ),
        ],
      ),
      floatingActionButton: AddTodoItemButton(),
    );
  }
}
