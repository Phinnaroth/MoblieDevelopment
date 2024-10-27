import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:Center(
          child: Text("Hello, my name is Naroth!",
            style: TextStyle(color:  Color.fromRGBO(244, 128, 190, 0.91), fontSize: 50,)
          ),
        ),
      ),
  ));
}
