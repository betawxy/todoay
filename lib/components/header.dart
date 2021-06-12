import 'package:flutter/material.dart';

import '../consts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              '12 Tasks',
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
