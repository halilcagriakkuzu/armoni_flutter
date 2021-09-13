import 'package:akorcum/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;
  return AppBar(
    leading: BackButton(
      color: kPrimaryColor,
      onPressed: () {
        
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ))
    ],
  );
}
