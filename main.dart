import 'Easy.dart';
import 'Medium.dart';
import 'Difficult.dart';
import "dart:io";
void main(){
  print('Welcome to the Quiz Game!');
  print('Choose your level: ');
  print('1. Easy');
  print('2. Medium');
  print('3. Hard');

  stdout.write('Enter the level number (1, 2, or 3): ');
  String level = stdin.readLineSync()!;

  List<Map<String, dynamic>> questions = [];
  switch (level) {
    case '1':
      questions = levelOne;
      break;
    case '2':
      questions =leveltwo;
      break;
    case '3':
      questions = levelthree;
      break;
    default:
      print('Invalid level selection. Exiting...');
      return;
  }
  int score=0;
   for (int i = 0; i < questions.length; i++) {
    print('\nQuestion ${i + 1}: ${questions[i]['question']}'); //i+1 is used to display the question number
    List<String> options = questions[i]['options'];
    for (int j = 0; j < options.length; j++) {
      print('${j + 1}. ${options[j]}');
    }

    stdout.write('Enter your answer (a, b, c, or d): ');
    String? userAnswer = stdin.readLineSync();

    if (userAnswer == questions[i]['answer']) {
      print('Correct!');
      score++;
    } else {
      print('Incorrect! The correct answer is: ${questions[i]['answer']}');
    }
  }

  print('\nQuiz ended! Your score: $score out of ${questions.length}');
}