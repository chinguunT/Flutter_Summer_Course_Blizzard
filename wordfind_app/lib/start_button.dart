import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFE86B02),
            Color(0xFFFA9541)
          ],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
        child: const Text('Start', style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 24),),

      ),
    );
  }
}
