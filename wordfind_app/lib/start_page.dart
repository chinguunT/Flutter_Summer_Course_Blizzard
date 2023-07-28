import 'package:flutter/material.dart';
import 'package:wordfind_app/User.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/start_button.dart';

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
              )
            ),
            SizedBox(
              height: 50,
              width: 500,
              child: Center(
                child: InputField(onSubmitted: _createUser),
              )
            ),
          ],
        ),
      ),

      floatingActionButton: const StartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100, bottom: 20),
              child: Image.asset(
                'images/arrow_back.png',
                width: 32,
                height: 32,
              ),
            ),
            Image.asset('images/game_logo.png'),
          ],
        ),
      ),

    );
  }

  void _createUser(String userName){
    setState(() {
      newUser.userName = userName;
    });


  }
}
