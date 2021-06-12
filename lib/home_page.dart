import 'package:flutter/material.dart';

import 'components/add_todo_item.dart';
import 'components/header.dart';
import 'components/todo_list.dart';
import 'consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({
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
