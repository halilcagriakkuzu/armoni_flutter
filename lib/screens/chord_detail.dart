import 'package:flutter/material.dart';

class ChordDetail extends StatefulWidget {
  const ChordDetail({ Key? key }) : super(key: key);

  @override
  _ChordDetailState createState() => _ChordDetailState();
}

class _ChordDetailState extends State<ChordDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://3.bp.blogspot.com/-BsKze6YQ4Nw/WagZCm4UiBI/AAAAAAAAARg/n3txolbCjhURkZKalYRqh24pyGL5cFlJwCLcBGAs/s1600/kara%2Btoprak.PNG'))),
      ),
    );
  }
}