import 'package:day13/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('My flutter app'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.edit,),
          ),

        ],
      ),

      body: const Center(child: AspectRatio(aspectRatio: 1.0, child: ImmutableWidget(),)),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: const Center(
            child: Text('i am a Drawer'),
          )
        ),
      ),
    );
  }
}

