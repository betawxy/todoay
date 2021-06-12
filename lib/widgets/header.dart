import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/state/app_state.dart';

import '../consts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskCount = context.select<AppState, int>(
      (appState) => appState.todos.length,
    );
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 40,
              ),
              radius: 40,
              backgroundColor: Colors.white,
              foregroundColor: kMainColor,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Todoay',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              '$taskCount Tasks',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
