import 'package:akorcum/widgets/button_widget.dart';
import 'package:akorcum/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextFieldWidget(
                hintText: 'Email',
                obscureText: false,
                prefixIconData: Icons.mail_outline,
                suffixIconData: Icons.check,
                onChanged: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFieldWidget(
                    hintText: 'Şifre',
                    obscureText: true,
                    prefixIconData: Icons.lock_outline,
                    suffixIconData: Icons.remove_red_eye_rounded,
                    onChanged: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Şifremi Unuttum",
                    style: TextStyle(color: Color(0xffA160FB)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ButtonWidget(
                title: "Giriş Yap",
                hasBorder: false,
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                title: "Kayıt Ol",
                hasBorder: true,
              ),
            ],
          ),
        ));
  }
}
