import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(bottom: 30), child: Image.asset('images/iCodeGuyHead.png'),)
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 250), child: GradientText(text: 'Player name', size: 20)),

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(right: 100, bottom: 10), child: Image.asset('images/arrow_back.png', width: 32, height: 32,),),
            Image.asset('images/game_logo.png')
          ],
        ),
      ),

    );
  }
}
