import 'package:flutter/material.dart';

class PlayerNameInput extends StatelessWidget {
  const PlayerNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/back2.png'),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
