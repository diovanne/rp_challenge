import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 32, 20, 0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 25),
                border: OutlineInputBorder(),
                labelText: 'Login',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 32, 20, 0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 25),
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25),
              ),
            ),
          )
        ],
      )),
    );
  }
}
