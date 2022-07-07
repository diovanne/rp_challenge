import 'package:flutter/material.dart';
import 'services.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _signupNameController = TextEditingController();
  TextEditingController _signupEmailController = TextEditingController();
  TextEditingController _signupPasswordController = TextEditingController();

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
              controller: _signupEmailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 25),
                border: OutlineInputBorder(),
                labelText: 'full name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 32, 20, 0),
            child: TextField(
              controller: _signupEmailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 25),
                border: OutlineInputBorder(),
                labelText: 'e-mail',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 32, 20, 0),
            child: TextField(
              controller: _signupPasswordController,
              textInputAction: TextInputAction.next,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 25),
                border: OutlineInputBorder(),
                labelText: 'password',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Signup',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
