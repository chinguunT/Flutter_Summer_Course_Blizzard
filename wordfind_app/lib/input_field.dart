import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({super.key, required this.onSubmitted});

  final void Function(String) onSubmitted;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField>{
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 310,
      child: TextField(
        onSubmitted: (String value) {
          widget.onSubmitted(value);
        },
        controller: _textEditingController,
        maxLines: 1,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(

        ),
      ),
    );
  }
}
