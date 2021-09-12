import 'package:akorcum/screens/login_screen.dart';
import 'package:akorcum/theme.dart';
import 'package:akorcum/widgets/forget_password_form.dart';
import 'package:akorcum/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "Şifre Sıfırla",
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Text("Lütfen mail adresinizi giriniz."),
            SizedBox(
              height: 10,
            ),
            ResetForm(),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: PrimaryButton(
                  buttonText: "Gönder",
                ))
          ],
        ),
      ),
    );
  }
}
