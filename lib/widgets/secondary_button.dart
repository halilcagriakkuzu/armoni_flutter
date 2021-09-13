import 'package:akorcum/theme.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  
final String buttonText;
 SecondaryButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.transparent),
          child: Text(buttonText,style: textButton.copyWith(color: kPrimaryColor,fontSize: 15),),
    );
  }
}
