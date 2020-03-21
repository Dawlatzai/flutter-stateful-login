import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            _emailField(),
            _passwordField(),
            Container(
              margin: EdgeInsets.only(top: 15.0),
            ),
            _submitButton(),
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Adress',
        hintText: 'you@example.com',
      ),
      validator: (value) {
        if (!value.contains('@')) {
          return 'Please enter a valid email address';
        }
      },
      onSaved: (value) {
        email = value;
      },
    );
  }

  Widget _passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: (value) {
        if (value.length < 4) {
          return 'Please enter a password greather than 4 characters';
        }
      },
      onSaved: (value) {
        password = value;
      },
    );
  }

  Widget _submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit!'),
      onPressed: () {
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();
          print('I am very glad to get my $email and $password and pull it to API');
          // Scaffold.of(context)
          //     .showSnackBar(SnackBar(content: Text('Processing Data')));
        }
      },
    );
  }
}
