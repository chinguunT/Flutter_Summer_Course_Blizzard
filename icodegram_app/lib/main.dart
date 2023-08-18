import 'package:flutter/material.dart';
import 'package:icodegram_app/pages/login.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      textTheme: Typography().white.apply(fontFamily: 'Rubik')
    ),
    home: const LoginScreen(),
  ));
}