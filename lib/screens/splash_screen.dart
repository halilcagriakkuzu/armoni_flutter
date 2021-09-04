import 'package:akorcum/screens/login_screen.dart';
import 'package:akorcum/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.library_music,
                    color: Color(0xffA160FB),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Armani Akor",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "Armoni uygulamasını daha efektif kullanmak için giriş yapınız.Giriş yaparak akorları favorilerinize ekleyebilir ve daha sonra hızlıca ulaşabilirsiniz.",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffA160FB),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "Giriş Yap",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(color: Color(0xffA160FB), fontSize: 15),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
