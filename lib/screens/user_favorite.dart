import 'package:flutter/material.dart';

class UserFavorites extends StatefulWidget {
  const UserFavorites({ Key? key }) : super(key: key);

  @override
  _UserFavoritesState createState() => _UserFavoritesState();
}

class _UserFavoritesState extends State<UserFavorites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Burası üyenin favorileri sayfası"),),
    );
  }
}