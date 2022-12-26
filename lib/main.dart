// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:textfield_inputdecoration/pages/loginform.dart';
import 'package:textfield_inputdecoration/pages/signup.dart';
import 'package:textfield_inputdecoration/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        "/login": (context) => const loginform(),
        "/signup": (context) => const Signup(),
      },
    );
  }
}
