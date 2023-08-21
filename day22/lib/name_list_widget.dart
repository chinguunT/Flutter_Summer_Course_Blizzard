import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = ["Elara", "Liam", "Seraphina", "Oliver", "Aurora",
    "Jasper", "Isabella", "Finnegan", "Luna", "Everett",
    "Nova", "Atticus", "Celeste", "Maximus", "Ophelia",
    "Leo", "Adelaide", "Felix", "Amara", "Silas",
    "Penelope", "Sebastian", "Calliope", "Dorian", "Freya"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical, itemCount: names.length, itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
            child: Text(names[index]),
          );
      },),
    );
  }
}
