// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:login/widgets/Whitespace.dart';
import 'package:login/widgets/customfiled.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController _username = TextEditingController();
TextEditingController _password = TextEditingController();
bool isClicked = false;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter TextField Example"),
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            customField('UserName', _username),
            whiteSpace(10),
            customField('Password', _password),
            whiteSpace(10),
            isClicked
                ? Text(_username.text + ' ' + _password.text)
                : whiteSpace(10),
            whiteSpace(10),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isClicked = true;
                  });
                },
                child: const Text("Sign in"))
          ],
        ),
      )),
    );
  }
}





