import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/todo.dart';
import 'package:todoey/state/app_state.dart';

import '../consts.dart';

class AddTodoItemButton extends StatefulWidget {
  const AddTodoItemButton({Key? key}) : super(key: key);

  @override
  _AddTodoItemButtonState createState() => _AddTodoItemButtonState();
}

class _AddTodoItemButtonState extends State<AddTodoItemButton> {
  var content = '';

  Widget buildModal(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .45,
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: kMainColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: kTextFieldInputDecoration,
                onChanged: (newValue) {
                  setState(() {
                    content = newValue;
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<AppState>(context, listen: false).addTodo(
                  Todo(
                    title: content,
                    finished: false,
                  ),
                );
                setState(() {
                  content = '';
                });
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: kMainColor,
              ),
            )
          ],
        ),
      ),
      decoration: kCurvedTopBoxDecoration,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 40,
          ),
          backgroundColor: kMainColor,
          onPressed: () {
            showModalBottomSheet<void>(
              backgroundColor: Colors.transparent,
              context: context,
              builder: buildModal,
            );
          },
        ),
      ),
    );
  }
}
