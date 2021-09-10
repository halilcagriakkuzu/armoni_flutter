import 'package:akorcum/screens/home_screen.dart';
import 'package:akorcum/widgets/button_widget.dart';
import 'package:akorcum/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              height: size.height - 400,
              color: Color(0xffA160FB),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Armoni Akor",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                      child: Text(
                    " - Müzik için Herşey - ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  )),
                ],
              )),
          Padding(
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
                      "Şifreni mi unuttun?",
                      style: TextStyle(color: Color(0xffA160FB)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: ButtonWidget(
                    title: "Giriş Yap",
                    hasBorder: false,
                  ),
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
          ),
        ],
      ),
    );
  }
}
