import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/start_page.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(padding: EdgeInsets.only(top: 200)),
            const Expanded(child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter(letter: 'W'),
                    GradientLetter(letter: 'O'),
                    GradientLetter(letter: 'R'),
                    GradientLetter(letter: 'D')
                  ],
                ),
                GradientText(text: 'GAME', size: 31.6),
              ],
            ),
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Image.asset('images/iCodeGuy.png'),
            const Expanded(child: GradientText(text: 'READY?', size: 25))
          ],
        ),
      ),

      floatingActionButton: Container(
        height: 60,
        width: 310,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color(0xFFE86B02),
              Color(0xFFFA9541)
            ]
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: () {  },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          child: const Text('PLAY', style: TextStyle(fontFamily: 'Nunito', fontSize: 24, fontWeight: FontWeight.w700),),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}