import 'package:flutter/material.dart';

import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign Up Screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
            SizedBox(height: 40,),
            GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffA160FB),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "Kayıt Oldum",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                ),
          ],
        ),
      )
    );
  }
}