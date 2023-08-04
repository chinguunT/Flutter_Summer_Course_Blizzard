import 'package:flutter/material.dart';
import 'package:wordfind_app/task_widget.dart';

import 'Models/task_model.dart';
import 'Models/user_model.dart';
import 'data/questions.dart';

class TaskPage extends StatefulWidget {
  final User user;

  const TaskPage(this.user, {super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  GlobalKey<TaskWidgetState> globalKey = GlobalKey();
  late List<TaskModel> listQuestions;
  late User user;

  @override
  void initState() {
    super.initState();
    listQuestions = questions;
    user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
          leading: IconButton(
            icon: Image.asset('images/arrow_back.png'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            user.userName,
            style: const TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
          )),
      body: SafeArea(
        child: Container(
          // color: Colors.transparent,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(child: LayoutBuilder(builder: (context, constraints) {
                return TaskWidget(
                  constraints.biggest,
                  listQuestions.map((question) => question.clone()).toList(),
                  key: globalKey,
                );
              })),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 150,
                    // height: 60,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFFE86B02),
                            Color(0xFFFA9541),
                          ]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: const Text(
                        'Reload',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
