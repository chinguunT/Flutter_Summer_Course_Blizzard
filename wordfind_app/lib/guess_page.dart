import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';

class GuessPage extends StatelessWidget {
  const GuessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/back2.png'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 390,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image.asset('guessImages/orange1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image.asset('guessImages/orange1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image.asset('guessImages/orange1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image.asset('guessImages/orange1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image.asset('guessImages/orange1.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
                width: 390,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [GradientText(text: '0/10', size: 25)],
                ),
              ),
            ],
          )),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Image.asset('guessImages/exit.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: GradientText(
                text: 'Guest',
                size: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset('guessImages/win.png')],
            )
          ],
        ),
      ),
    );
  }
}
