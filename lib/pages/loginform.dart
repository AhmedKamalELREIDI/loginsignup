// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class loginform extends StatelessWidget {
  const loginform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {  Navigator.pop(context);} ,
        child: Icon(Icons.home),
        backgroundColor: Colors.purple[400],
      ),
      appBar: AppBar(
        title: Text("log in"),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
        
      ),
    
      // backgroundColor: Colors.amber,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 266,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple[100],
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "email:",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 24),
              width: 266,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple[100],
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "password:",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("login", style: TextStyle(fontSize: 23)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  // foregroundColor:MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 110, vertical: 17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66)))),
            ),
          ],
        ),
      ),
    );
  }
}
