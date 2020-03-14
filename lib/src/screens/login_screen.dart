import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            _emailField(),
            _passwordField(),
            // _submitButton(),
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Adress',
        hintText: 'you@example.com',
      ),
    );

  }

  Widget _passwordField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
    );

  }

  Widget _submitButton() {
    
  }
}