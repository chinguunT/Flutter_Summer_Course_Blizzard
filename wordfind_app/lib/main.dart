import 'package:flutter/material.dart';
import 'package:wordfind_app/guess_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Word Find Game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: const Scaffold(
      body: Center(
        child: GuessPage(),
      ),
    ),
  )
  );
}
