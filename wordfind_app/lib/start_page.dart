import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/welcome_page.dart';

import 'Models/user_model.dart';
import 'guess_page.dart';

User newUser = User('guest', 0);

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/back2.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: 500,
              child: Image.asset('images/iCodeGuyHead.png'),
            ),
            const SizedBox(
                height: 50,
                width: 500,
                child: Center(
                  child: GradientText(text: 'Player name', size: 20),
                )),
            SizedBox(
                height: 50,
                width: 500,
                child: Center(
                  child: InputField(
                    onSubmitted: _createUser,
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: StartButton(newUser),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 75),
            child: Image.asset('images/game_logo.png'),
          ),
          leading: IconButton(
            icon: Image.asset(
              'images/arrow_back.png',
              width: 32,
              height: 32,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()));
            },
          )),
    );
  }

  void _createUser(String userName) {
    setState(() {
      newUser.userName = userName;
    });
  }
}

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
