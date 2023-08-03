import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';
import 'package:wordfind_app/Models/task_model.dart';

import 'Models/char_model.dart';

class TaskWidget extends StatefulWidget {
  final Size size;
  final List<TaskModel> listQuestions;

  const TaskWidget(this.size, this.listQuestions, {super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late Size size;
  late List<TaskModel> listQuestions;
  int currentQuestionIndex = 0;
  int hintCount = 0;

  @override
  void initState() {
    super.initState();
    size = widget.size;
    listQuestions = widget.listQuestions;
    generatePuzzle();
  }

  @override
  Widget build(BuildContext context) {
    TaskModel currentQuestion = listQuestions[currentQuestionIndex];

    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: generateHint(),
            child: Row(
              children: [
                InkWell(
                  onTap: () => generatePuzzle(left: true),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 45,
                    color: Color(0xFFE86B02),
                  ),
                ),
                InkWell(
                  onTap: generatePuzzle(next: true),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 45,
                    color: Color(0xFFE86B02),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxWidth: size.width / 2 * 1.5,
            ),
            child: Image.network(
              currentQuestion.pathImage,
              fit: BoxFit.contain,
            ),
          )),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              currentQuestion.question,
              style: const TextStyle(
                  fontSize: 25,
                  color: Color(0xFFE86B02),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            alignment: Alignment.center,
            child: LayoutBuilder(builder: (context, constraints) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: currentQuestion.puzzles.map((puzzle) {
                  Color? color;
                  if (currentQuestion.isDone) {
                    color = Colors.green[300];
                  } else if (puzzle.hintShow) {
                    color = Colors.yellow[300];
                  } else if (currentQuestion.isFull) {
                    color = Colors.red;
                  } else {
                    color = const Color(0xFFE86B02);
                  }

                  return InkWell(
                    onTap: () {
                      if (puzzle.hintShow || currentQuestion.isDone) {
                        return;
                      }
                      currentQuestion.isFull = false;
                      puzzle.clearValue();
                      setState(() {});
                    },
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: constraints.biggest.width / 7 - 6,
                        height: constraints.biggest.width / 7 - 6,
                        margin: const EdgeInsets.all(3),
                        child: Text(
                          (puzzle.currentValue ?? '').toUpperCase(),
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  );
                }).toList(),
              );
            }),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            padding:
                const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 40),
            alignment: Alignment.center,
            child: Container(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    childAspectRatio: 1,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4),
                itemCount: 14,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  bool statusBtn = currentQuestion.puzzles.indexWhere(
                          (puzzle) => puzzle.currentIndex == index) >=
                      0;
                  return LayoutBuilder(builder: (context, constraints) {
                    return Container();
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  generatePuzzle(
      {List<TaskModel>? loop, bool next = false, bool left = false}) {
    if (loop != null) {
      currentQuestionIndex = 0;
      listQuestions = [];
      listQuestions.addAll(loop);
    } else {
      if (next && currentQuestionIndex < listQuestions.length - 1) {
        currentQuestionIndex++;
      } else if (left && currentQuestionIndex > 0) {
        currentQuestionIndex--;
      } else if (currentQuestionIndex >= listQuestions.length - 1) {
        return;
      }
    }
    setState(() {});
    if (listQuestions[currentQuestionIndex].isDone) {
      return;
    }

    TaskModel currentQuestion = listQuestions[currentQuestionIndex];
    setState(() {});
    final List<String> answer = [currentQuestion.answer];
    final WSSettings wordSetting = WSSettings(
        width: 14,
        height: 1,
        orientations: List.from([WSOrientation.horizontal]));

    final WordSearchSafety wordSearch = WordSearchSafety();
    final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(answer, wordSetting);
    if (newPuzzle.errors!.isEmpty) {
      currentQuestion.arrayButton =
          newPuzzle.puzzle!.expand((list) => list).toList();
      currentQuestion.arrayButton.shuffle();
      bool isDone = currentQuestion.isDone;
      if (!isDone) {
        currentQuestion.puzzles = List.generate(
            answer[0].split('').length,
            (index) => CharModel(
                correctValue: currentQuestion.answer.split('')[index]));
      }
    }
    hintCount = 0;
    setState(() {});
  }

  generateHint() async {}
}
