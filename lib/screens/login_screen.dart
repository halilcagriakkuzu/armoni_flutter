import 'package:akorcum/screens/sign_up_screen.dart';
import 'package:akorcum/theme.dart';
import 'package:akorcum/widgets/login_form.dart';
import 'package:akorcum/widgets/login_option.dart';
import 'package:akorcum/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                "Hoş geldin.",
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Uygulamada yeni misin?"),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      "Üye Ol",
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LoginForm(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Şifreni mi unuttun?",
                style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1),
              ),
              SizedBox(height: 20,),
              PrimaryButton(buttonText: 'Giriş Yap',),
              SizedBox(height: 20,),
              Text("Ya da:",style: subTitle.copyWith(color: kBlackColor,fontSize: 16),),
              SizedBox(height: 20,),
              LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
