import 'package:flutter/material.dart';
import 'question.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quizzer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userpickedanswer) {
    bool correctAnswer = quizBrain.getBoolValue();
    setState(() {
      if (quizBrain.isFinished() == true) {
        //TODO Step 4 Part A - show an alert using rFlutter_alert,


        //This is the code for the basic alert from the docs for rFlutter Alert:

        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();


        //Modified for our purposes:

        Alert(

          context: context,

          title: 'Finished!',

          desc: 'You\'ve reached the end of the quiz.',

        ).show();


        //TODO Step 4 Part C - reset the questionNumber,

        quizBrain.reset();


        //TODO Step 4 Part D - empty out the scoreKeeper.

        scoreKeeper = [];
      }

      else if (correctAnswer == userpickedanswer) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scoreKeeper.add(
          Icon(
            Icons.clear,
            color: Colors.red,
          ),
        );
      }
      quizBrain.nextQuestion();
    });
  }

  //print('the user got is right');
//    } else {
//      setState(() {
//        scoreKeeper.add(
//          Icon(
//            Icons.clear,
//            color: Colors.red,
//          ),
//        );
//      });
  //print('The user got it wrong');
//    }
//    setState(() {
//      quizBrain.NextQuestion();
//    });

//  List<String> questions = [
//    'The prime minister of Nepal is K.P. Oli',
//    'Tilicho is the highest altitude lake in the world',
//    'Halesi mahadev Mandir lies in Dolpa',
//  ];

//  List<bool> answer = [
//    true,
//    false,
//    false,
//  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                checkAnswer(true);
              },

//                  if (correctAnswer == true) {
//                    scoreKeeper.add(
//                      Icon(
//                        Icons.check,
//                        color: Colors.green,
//                      ),
//                    );
//                  } else {
//                    scoreKeeper.add(
//                      Icon(
//                        Icons.clear,
//                        color: Colors.red,
//                      ),
//                    );
//                  }

              child: Text(
                'True',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                checkAnswer(false);
              },

//                bool correctAnswer =
//                    quizBrain.getBoolValue();
//                if (correctAnswer == false) {
//                  print('the user got is right');
//                } else {
//                  print('The user got it wrong');
//                }
//                setState(() {
//                  quizBrain.NextQuestion();
//                  if (correctAnswer == false) {
//                    scoreKeeper.add(
//                      Icon(
//                        Icons.check,
//                        color: Colors.green,
//                      ),
//                    );
//                  } else {
//                    scoreKeeper.add(
//                      Icon(
//                        Icons.clear,
//                        color: Colors.red,
//                      ),
//                    );
//                  }
//                });

              child: Text(
                'False',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: scoreKeeper,
        )
      ],
    );
  }
}

//if (quizBrain.isFinished() == true) {
//Alert(
//context: context,
//type: AlertType.warning,
//title: "Quiz has ended",
//desc: "play the quiz again.",
//buttons: [
//DialogButton(
//child: Text(
//"Restart",
//style: TextStyle(color: Colors.white, fontSize: 20),
//),
//onPressed: () => Navigator.pop(context),
//color: Color.fromRGBO(0, 179, 134, 1.0),
//),
//DialogButton(
//child: Text(
//"Cancel",
//style: TextStyle(color: Colors.white, fontSize: 20),
//),
//onPressed: () {
//Onfinished();
//},
//gradient: LinearGradient(colors: [
//Color.fromRGBO(116, 116, 191, 1.0),
//Color.fromRGBO(52, 138, 199, 1.0)
//]),
//)
//],
//).show();
//}