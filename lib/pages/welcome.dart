// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(fontFamily: "font",fontSize: 30,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text("login", style: TextStyle(fontSize: 23)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  // foregroundColor:MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 110, vertical: 17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66)))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text("sign up",
                  style: TextStyle(fontSize: 23, color: Colors.black)),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[100]),
                  // foregroundColor:MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66)))),
            ),
          ],
        ),
      ),
    );
  }
}
