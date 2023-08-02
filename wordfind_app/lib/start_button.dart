import 'package:flutter/material.dart';
import 'package:wordfind_app/guess_page.dart';
import 'package:wordfind_app/start_page.dart';

import 'Models/user_model.dart';

class StartButton extends StatefulWidget {
  const StartButton(User newUser, {super.key});
  @override
  State<StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GuessPage(
                        newUser,
                      )));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        child: const Text(
          'Start',
          style: TextStyle(
              fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 24),
        ),
      ),
    );
  }
}
