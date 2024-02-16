import 'Easy.dart';
import 'Medium.dart';
import 'Difficult.dart';
import "dart:io";
void main(){
  print('****************************OBJECT ORIENTED PROGRAMMING********************************');

  print('*****************************Quiz Will Start Soon**************************************');

  print('Select the difficulty level: ');
  print('1. Easy');
  print('2. Medium');
  print('3. Hard');

  stdout.write('Enter the level number (1, 2, or 3): ');
  String level = stdin.readLineSync()!;

  List<Map<String, dynamic>>  Qns = [];
  switch (level) {
    case '1':
      Qns = levelOne;
      break;
    case '2':
      Qns =leveltwo;
      break;
    case '3':
      Qns = levelthree;
      break;
    default:
      print('Invalid level selection. Exiting...');
      return;
  }
  int score=0;
   for (int i = 0; i < Qns.length; i++) {
    print('\nQuestion ${i + 1}: ${Qns[i]['Qn']}'); //i+1 is used to display the question number
    List<String> options = Qns[i]['options'];
    for (int j = 0; j < options.length; j++) {
      print('${j + 1}. ${options[j]}');
    }

    stdout.write('Enter your answer (1,2,3 & 4): ');
    String? correctOption = stdin.readLineSync();

    if (correctOption == Qns[i]['answer']) {
      print('********GOOD JOB*******');
      score++;
    } else {
      print('************INCORRECT******************\nThe correct answer is: ${Qns[i]['answer']}');
    }
  }

  print('\n Your score: $score out of ${Qns.length}');
}