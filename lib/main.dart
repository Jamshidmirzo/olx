import 'package:flutter/material.dart';
import 'package:olx/homepage.dart';

void main(List<String> args) {
  runApp(Olx());
}

class Olx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}
