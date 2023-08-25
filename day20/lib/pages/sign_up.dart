import 'package:day20/resources/auth_method.dart';
import 'package:day20/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../component/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  Uint8List? _image;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _userController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }

  selectImage() async {
    Uint8List image = await pickImage(ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(),
                ),
                const Text(
                  'iCodegram',
                  style: TextStyle(fontSize: 34),
                ),
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 64,
                            backgroundImage: MemoryImage(_image!),
                          )
                        : const CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                                'https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png'),
                          ),
                    Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(onPressed: () {
                        selectImage();
                      }, icon: const Icon(Icons.add_a_photo)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 64,
                ),
                TextFieldInput(
                  hintText: 'Email',
                  obsecureText: false,
                  textEditingController: _emailController,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Хэрэглэгчийн нэр',
                  obsecureText: false,
                  textEditingController: _userController,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг',
                  obsecureText: true,
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг давтаx',
                  obsecureText: true,
                  textEditingController: _rePasswordController,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 24,
                ),
                Flexible(
                  flex: 2,
                  child: Container(),
                ),
                InkWell(
                  onTap: () {
                    AuthMethod().signUpUser(
                        email: _emailController.text,
                        userName: _userController.text,
                        password: _passwordController.text,
                        file: null);
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        color: Colors.blue),
                    child: const Text('Бүртгүүлэх'),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Flexible(
                  flex: 2,
                  child: Container(),
                )
              ],
            )),
      ),
    );
  }
}
