import 'dart:io';
import 'dart:math';

void main(){
  var random = Random();
  var randomNumber = random.nextInt(100) + 1;
  int attempts = 0;
  int guess = 0;

  print("Welcome to Guess the Number!");
  print("I have chosen a number between 1 and 100.");
  print ("Can you guess the number?");

  while (randomNumber != guess){
    stdout.write("Enter the guess: ");
    String? input = stdin.readLineSync();
    if (input == null){
      print ("Invalid input. Please enter a number.");
      continue;
    }
    guess = int.tryParse(input) ?? 0;
    if (guess > randomNumber) {
      print("Too high!");
    } else if (guess < randomNumber) {
      print ("Too low!");
    } else{
      print ("Congratulations! You guessed the correct number in $attempts attempts");
    }
    attempts++;
  }

  print ("Thanks for playing!");
  print ("Player attempted ${attempts-1}");
}