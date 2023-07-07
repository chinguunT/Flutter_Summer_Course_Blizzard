import 'package:flutter/material.dart';

void main() {
  print ("Hello Flutter!");
  runApp(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text(
              'Data'
            ),
          ),
        ),
      ),
  );
}

