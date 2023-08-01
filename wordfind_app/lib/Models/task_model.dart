import 'char_model.dart';

class TaskModel{
  late String question;
  late String pathImage;
  late String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButton = [];

  TaskModel({required this.pathImage, required this.question, required this.answer, this.arrayButton= const []});

  void setWordFindChar(CharModel puzzles){
    this.puzzles = puzzles as List<CharModel>;
  }

  void setIsDone(){
    isDone = true;
  }

  bool fieldCompleteCorrect(){
    bool check;

    bool complete = puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if (complete == false){
      isFull = false;
      return complete;
    }
    isFull = true;
    String answeredString  = puzzles.map((puzzle) => puzzle.currentValue).join("");
    if (answeredString == answer){
      return answeredString;
    }
  }
}