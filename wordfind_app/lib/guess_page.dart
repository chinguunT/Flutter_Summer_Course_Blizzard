import 'package:flutter/material.dart';
import 'package:wordfind_app/Models/user_model.dart';
import 'package:wordfind_app/start_page.dart';

class GuessPage extends StatefulWidget {
  final User user;

  const GuessPage(this.user, {super.key});

  @override
  State<GuessPage> createState() => _GuessPageState();
}

class _GuessPageState extends State<GuessPage> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = widget.user;
    print(user.userName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('images/arrow_back.png'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const StartPage()));
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          user.userName,
          style: const TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: SizedBox(
              width: double.maxFinite,
              child: Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: const Text(
                      'Reload',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
