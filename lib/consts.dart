import 'package:flutter/material.dart';

const kMainColor = Colors.lightBlueAccent;
const kTextFieldInputDecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: kMainColor,
      width: 3.0,
    ),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: kMainColor,
      width: 3.0,
    ),
  ),
  border: UnderlineInputBorder(
    borderSide: BorderSide(
      color: kMainColor,
      width: 3.0,
    ),
  ),
);
const kCurvedTopBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  ),
);
