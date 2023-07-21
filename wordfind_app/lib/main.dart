import 'package:flutter/material.dart';

import 'Gradient_letter.dart';
import 'gradient_text.dart';

void main() {
  runApp(MaterialApp(
    title: 'Word Find Game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientLetter(letter: 'W'),
                GradientLetter(letter: 'O'),
                GradientLetter(letter: 'R'),
                GradientLetter(letter: 'D'),
              ],
            ),

            GradientText(text: "GAME", size: 31.6),
            SizedBox(
              height: 400,
            ),
            GradientText(text: 'READY?', size: 25),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Container(
          width: 310,
          height: 60,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: <Color>[
                Color(0xFFE86B02),
                Color(0xFFFA9541)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(25)
          ),
          child: ElevatedButton(
            onPressed: () {  },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            ),
            child:  const Text('PLAY', style: TextStyle(fontSize: 24, fontFamily: 'Nunito', fontWeight: FontWeight.w700),),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),

  )
  );
}
