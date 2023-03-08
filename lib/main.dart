import 'package:flutter/material.dart';
import 'package:kbc_app/firstscreen.dart';
import 'package:kbc_app/right_answer.dart';
import 'finish.dart';
import 'home_screen.dart';
import 'wrong_answer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:
    {
      "/" : (context) => First_Screen(),
      "start" : (context) => HomeScreen(),
      "right" : (context) => Right_Answer(),
      "wrong" : (context) => Wrong_Answer(),
      "finish" : (context) => Finish(),

    },
  ));
}
