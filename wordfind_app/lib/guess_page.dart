import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';

class GuessPage extends StatelessWidget {
  const GuessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('images/arrow_back.png'),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'chinguun',
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
                  width: double.maxFinite,
                  child: Center(
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFE86B02),
                            Color(0xFFFA9541)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                        child: const Text('Reload', style: TextStyle(fontFamily: 'Nunito', fontSize: 24, fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
