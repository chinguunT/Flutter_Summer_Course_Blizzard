import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  const MaterialApp myApp  = MaterialApp(
    home:
        Center(
          child: Text(
          'Hello chinguun',
          style: TextStyle(color: Colors.white, fontSize: 20),

          )
        ));

  MaterialApp myNextApp = MaterialApp(
    title: 'Word find game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: const Scaffold(
      body: Center(
        child: Text('Hello :)', style: TextStyle(color: Colors.red, fontSize: 40, ),),

      ),
    ),
  );

  final myNiceApp bi = myNiceApp();

  runApp(bi);
}

void Hello(){
  print('Hello');
}

class myNiceApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My nice application', style: TextStyle(fontFamily: 'Nunito'),),
        ),

        body: Container(
          child: const Center(
            child: Text('It is my first app you know!', style: TextStyle(fontFamily: 'Ribeye'),),
          )
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: Hello,
          child: Image.asset(
            'assets/gear.png',
            width: 200,

          )
        ),
      ),
    );
  }
  
}