import 'package:flutter/material.dart';
import 'package:wordfind_app/player_name_input.dart';
import 'package:wordfind_app/welcome_page.dart';

import 'Gradient_letter.dart';
import 'gradient_text.dart';

void main() {
  runApp(MaterialApp(
    title: 'Word Find Game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: const Scaffold(
      body: Center(
        child: PlayerNameInput(),
      ),

    ),

  )
  );
}
