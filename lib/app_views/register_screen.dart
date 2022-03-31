import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static String id = '/RegisterScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hey, Welcome Back"),
            TextFormField(),
            TextFormField(),

          ],
        ),
      ),
    );
  }
}
