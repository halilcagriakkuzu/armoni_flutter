import 'package:akorcum/theme.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFprmState createState() => _SignUpFprmState();
}

class _SignUpFprmState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm("E mail", false),
        buildInputForm("Kullanıcı adı", false),
        buildInputForm("Şifre",true),
        buildInputForm("Şifre tekrar",true),
      ],
    );
  }
}

Padding buildInputForm(String hint, bool pass) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kTextFieldColor),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        suffixIcon:pass ?  IconButton(
          onPressed: () {},
          icon: Icon(Icons.visibility_off,color: kPrimaryColor,),
        ) : null
      ),
    ),
  );
}
