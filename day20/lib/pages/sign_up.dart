import 'package:day20/component/text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              const Text(
                'ICodegram',
                style: TextStyle(fontSize: 34),
              ),
              const SizedBox(
                height: 24,
              ),
               TextFieldInput(
                hintText: 'Phone Number',
                obsecureText: false,
                textEditingController: _phoneNumberController,
              ),
              const SizedBox(
                height: 24,
              ),
               TextFieldInput(
                hintText: 'User Name',
                obsecureText: false,
                 textEditingController: _userNameController,
              ),
              const SizedBox(
                height: 24,
              ),
               TextFieldInput(
                hintText: 'Password',
                obsecureText: true,
                 textEditingController: _passwordController,
              ),
              const SizedBox(
                height: 24,
              ),
               TextFieldInput(
                hintText: 'Confirm Password',
                obsecureText: true,
                 textEditingController: _rePasswordController,
              ),
              const SizedBox(
                height: 24,
              ),
              Flexible(flex: 2, child: Container()),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration:
                      const ShapeDecoration(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                        color: Colors.deepOrange
                      ),

                  child: const Text('Sign Up'),
                ),
              ),
              const SizedBox(
                height: 200,
              )
              // const Padding(padding: EdgeInsets.only(bottom: 100))
            ],
          ),
        ),
      ),
    );
  }
}
