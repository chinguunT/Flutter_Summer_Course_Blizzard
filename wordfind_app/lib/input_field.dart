import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 60,
      child: TextField(
        controller: _controller,
        onSubmitted: (_) {},
        maxLines: 1,
        style: const TextStyle(
          color: Color(0xFFE86B02),
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Nunito',
        ),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(
              Icons.person,
              color: Color(0xFFE86B02),
            ),
            hintText: 'Your name',
            hintStyle: const TextStyle(color: Color(0xFFE86B02)),
            suffixIcon: IconButton(
                onPressed: _controller.clear,
                icon: const Icon(
                  Icons.clear,
                  color: Color(0xFFE86B02),
                )),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none))),
      ),
    );
  }
}
