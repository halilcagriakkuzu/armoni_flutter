import 'package:akorcum/theme.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('E mail', false),
        buildInputForm('Şifre', true),
      ],
    );
  }
}

Padding buildInputForm(String label, bool pass) {
  bool _isObscure = true;
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      obscureText: pass ? _isObscure : false,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: kTextFieldColor,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        suffixIcon: pass
            ? IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_off),
              )
            : null,
      ),
    ),
  );
}
