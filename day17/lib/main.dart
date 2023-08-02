import 'package:day17/page_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PageOne()));}, child: const Icon(Icons.arrow_forward)),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
