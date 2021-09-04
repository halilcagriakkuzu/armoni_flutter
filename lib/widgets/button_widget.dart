import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool hasBorder;
  const ButtonWidget({
    Key? key,
    required this.title,
    required this.hasBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder ? Colors.white : Color(0xffA160FB),
          borderRadius: BorderRadius.circular(10),
          border: hasBorder ? Border.all(color: Color(0xffA160FB),width: 1):Border.fromBorderSide(BorderSide.none),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: hasBorder ? Color(0xffA160FB) : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
