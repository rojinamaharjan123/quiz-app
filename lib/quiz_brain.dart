import 'package:quizzer_app/question.dart';

class QuizBrain {
  int questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'The prime minister of Nepal is K.P. Oli', a: true),
    Question(
        q: 'Tilicho is  not the highest altitude lake in the world', a: false),
    Question(q: 'Halesi mahadev Mandir lies in Dolpa', a: false),
    Question(q: 'Slug\'s blood is green in color', a: false),
    Question(q: 'The prime minister of Nepal is K.P. Oli', a: true),
    Question(
        q: 'Tilicho is  not the highest altitude lake in the world', a: false),
    Question(q: 'Halesi mahadev Mandir lies in Dolpa', a: false),
    Question(q: 'Slug\'s blood is green in color', a: false),
    Question(q: 'The prime minister of Nepal is K.P. Oli', a: true),
//    Question(
//        q: 'Tilicho is  not the highest altitude lake in the world', a: false),
//    Question(q: 'Halesi mahadev Mandir lies in Dolpa', a: false),
//    Question(q: 'Slug\'s blood is green in color', a: false),
//    Question(q: 'The prime minister of Nepal is K.P. Oli', a: true),
//    Question(
//        q: 'Tilicho is  not the highest altitude lake in the world', a: false),
//    Question(q: 'Halesi mahadev Mandir lies in Dolpa', a: false),
//    Question(q: 'Slug\'s blood is green in color', a: false),
  ];

  void nextQuestion() {
    if (questionNumber < _questionBank.length - 1) {
      questionNumber++;
      print(questionNumber);
      print(_questionBank.length);
    }
  }

  String getString() {
    return _questionBank[questionNumber].questionText;
  }

  bool getBoolValue() {
    return _questionBank[questionNumber].questionanswer;
  }

  bool endOfQuiz() {
    if (questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  bool isFinished() {
    if (questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');

      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.

  void reset() {
    questionNumber = 0;
  }
}
