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
      body: Center(child: Text("Şarkının akoru",style: TextStyle(fontSize: 40),),),
    );
  }
}