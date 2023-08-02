import 'package:day17/main.dart';
import 'package:day17/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {Navigator.pop(context);},
              child: const Text('Go back to the Home Page'),
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Go to the second page'),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PageTwo()));},
            ),
          ),
        ],
      ),
    );
  }
}
