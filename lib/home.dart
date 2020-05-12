import 'package:flutter/material.dart';

class SpellingQuiz {
  var questions = [
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
    "Which one of these words is correctly spelt",
  ];

  var choices = [
    ["Accommodation", "Acommodation", "Accomodation", "Acomodation"],
    ["Occassion", "Ocassion", "Ocasion", "Occasion"],
    ["Reminience", "Reminiscence", "Reminisce", "Reminicent"],
    ["Profesional", "Professional", "Profesional", "Profesional"],
    ["Commitee", "Committe", "Comittee", "Committee"],
    ["Acknowledge", "Acknowlege", "Arknowledge", "Aknowledge"],
    ["Acqaintence", "Aquaintance", "Acquaintance", "Ackquaintance"],
    ["Acceptable", "Aceptable", "Acceptible", "Asceptable"],
    ["Absence", "Abcense", "Absance", "Abcense"],
    ["Mispelled", "Misspelled", "Misspeled", "Mispeled"],
  ];

  var correctAnswers = [
    "Accommodation",
    "Occassion",
    "Reminiscence",
    "Professional",
    "Committee",
    "Acknowledge",
    "Acquaintance",
    "Acceptable",
    "Absence",
    "Misspelled"
  ];
}

var finalScore = 0;
var questionNumber = 0;
var quiz = SpellingQuiz();

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new homepageState();
  }
}

class homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20.0)),
              new Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Question ${questionNumber + 1} of ${quiz.questions.length}",
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Text(
                      "Score: $finalScore",
                      style: TextStyle(fontSize: 22.0),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(
                quiz.questions[questionNumber],
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.green,
                    onPressed: () {
                      if (quiz.choices[questionNumber][0] ==
                          quiz.correctAnswers[questionNumber]) {
                        debugPrint("Excellent");
                        finalScore++;
                      } else {
                        debugPrint("Incorrect, try again");
                      }
                      updateQuestion();
                    },
                    child: Text(
                      quiz.choices[questionNumber][0],
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.green,
                    onPressed: () {
                      if (quiz.choices[questionNumber][1] ==
                          quiz.correctAnswers[questionNumber]) {
                        debugPrint("Excellent");
                        finalScore++;
                      } else {
                        debugPrint("Incorrect, try again");
                      }
                      updateQuestion();
                    },
                    child: Text(
                      quiz.choices[questionNumber][1],
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.green,
                    onPressed: () {
                      if (quiz.choices[questionNumber][2] ==
                          quiz.correctAnswers[questionNumber]) {
                        debugPrint("Excellent");
                        finalScore++;
                      } else {
                        debugPrint("Incorrect, try again");
                      }
                      updateQuestion();
                    },
                    child: Text(
                      quiz.choices[questionNumber][2],
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.green,
                    onPressed: () {
                      if (quiz.choices[questionNumber][3] ==
                          quiz.correctAnswers[questionNumber]) {
                        debugPrint("Excellent");
                        finalScore++;
                      } else {
                        debugPrint("Incorrect, try again");
                      }
                      updateQuestion();
                    },
                    child: Text(
                      quiz.choices[questionNumber][3],
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  color: Colors.deepOrange,
                  minWidth: 240.0,
                  height: 40.0,
                  onPressed: resetQuiz,
                  child: Text(
                    "End quiz",
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Summary(score: finalScore)));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Final Score: $score",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              MaterialButton(
                color: Colors.deepOrange,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: Text(
                  "Reset Quiz",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
