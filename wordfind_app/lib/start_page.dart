import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wordfind_app/guess_page.dart';

import 'Models/user_model.dart';
import 'gradient_text.dart';
import 'input_field.dart';

User newUser = User('Guest', 0);

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
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset('images/arrow_back.png'),
            onPressed: () {
              Navigator.of(context).pop();
              newUser = User('Guest', 0);
            }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50.0,
          child: Image.asset('images/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset(
                'images/iCodeGuyHead.png',
                // width: 300,
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const GradientText('Player name', 20.0),
              const Padding(padding: EdgeInsets.only(top: 20)),
              InputField(onSubmitted: _createUser),
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton(
        newUser,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _createUser(String userName) {
    setState(() {
      newUser.userName = userName;
    });
    if (kDebugMode) {
      print('Creating user: ${newUser.userName}');
      print('User score: ${newUser.score}');
    }
  }
}

class StartButton extends StatelessWidget {
  const StartButton(User newUser, {super.key});

  // @override
  // Widget build(BuildContext context) {
  //   if (newUser.userName == 'Guest') {
  //     return Container();
  //   } else {
  //     return Container(
  //       width: 310,
  //       height: 60,
  //       decoration: BoxDecoration(
  //         gradient: const LinearGradient(
  //             begin: Alignment.centerLeft,
  //             end: Alignment.centerRight,
  //             colors: [
  //               Color(0xFFE86B02),
  //               Color(0xFFFA9541),
  //             ]),
  //         borderRadius: BorderRadius.circular(25),
  //       ),
  //       child: ElevatedButton(
  //         onPressed: () {
  //           Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => TaskPage(newUser)),
  //           );
  //         },
  //         style: ElevatedButton.styleFrom(
  //             backgroundColor: Colors.transparent,
  //             elevation: 0,
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(25))),
  //         child: const Text(
  //           'START',
  //           style: TextStyle(
  //               fontFamily: 'Nunito',
  //               fontSize: 24,
  //               fontWeight: FontWeight.w700),
  //         ),
  //       ),
  //     );
  //   }
  // }

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
                  builder: (context) => TaskPage(
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
