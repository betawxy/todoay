import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            'Test',
            style: Theme.of(context).textTheme.headline6,
          ),
          trailing: Checkbox(
            value: false,
            onChanged: (newValue) {},
          ),
        );
      },
      itemCount: 3,
    );
  }
}
