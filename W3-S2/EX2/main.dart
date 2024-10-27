import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Container(
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(35)),
       
        child: Container(
          decoration: BoxDecoration(color: Colors.blue[300],  borderRadius: BorderRadius.circular(35)),
          child: Center(
            child: Text("CADT Stuents!",
              style: TextStyle(color: Colors.pink[300],fontSize: 50, decoration: TextDecoration.none),
              
            ),
          ),
        ),
      ),
    ),
  );
}