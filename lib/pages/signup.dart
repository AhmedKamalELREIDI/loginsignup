import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
        backgroundColor: Colors.purple[400],
      ),
      appBar: AppBar(
        title: Text("Sign up", style: TextStyle(fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
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
                  hintText: "user name:",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
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
                  prefixIcon: Icon(Icons.email),
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
              child: Text("Sign Up", style: TextStyle(fontSize: 23)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
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
