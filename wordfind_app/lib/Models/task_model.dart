import 'char_model.dart';

class TaskModel {
  late String question;
  late String pathImage;
  late String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButton = [];

  TaskModel({required this.pathImage, required this.question, required this.answer, this.arrayButton = const []});

  void setWordFindChar(List<CharModel> puzzles) {
    this.puzzles = puzzles;
  }

  void setIsDone() {
    isDone = true;
  }

  dynamic fieldCompleteCorrect() {
    bool complete = puzzles.every((puzzle) => puzzle.currentValue != null);
    if (!complete) {
      isFull = false;
      return complete;
    }
    isFull = true;
    String answeredString = puzzles.map((puzzle) => puzzle.currentValue).join("");
    if (answeredString == answer) {
      return answeredString;
    }
    return false;
  }

  TaskModel clone(){
    return TaskModel(answer: answer, pathImage: pathImage, question: question);
  }
}
