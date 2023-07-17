import 'package:flutter/material.dart';
import 'package:quize_app/widget/answer_button.dart';
import 'package:quize_app/widget/custom_text.dart';
import 'package:quize_app/data/mcq_questions.dart';

class QuestionScreen extends StatefulWidget {
  final String? enteredName;
  const QuestionScreen({Key? key, this.enteredName}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int changeQuestionIndex = 0;
  var score = 0;

  void toHandleQuestionChange() {
    setState(
      () {
        // changeQuestionIndex = changeQuestionIndex + 1;
        // changeQuestionIndex += 1; // increment the value by 2 or whatever value
        changeQuestionIndex++;
        // print('changeQuestionIndex $changeQuestionIndex'); // increment the value by 1
      },
    );
  }

  void handleAnswerQuestion(String answer) {
    final currentQuestion = mcqQuestions[changeQuestionIndex];
    print('corrected Answer ${currentQuestion.answers[0]}');
    print('selected answer $answer');

    if (currentQuestion.answers[0] == answer) {
      setState(() {
        score++;
      });
    }

    toHandleQuestionChange();
    // print('changeQuestionIndex $changeQuestionIndex');
    print('Scre $score');

    // if (changeQuestionIndex >= mcqQuestions.length) {
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: const Text('Quiz Complete'),
    //         content: Text('Your score: $score / ${mcqQuestions.length}'),
    //         actions: <Widget>[
    //           TextButton(
    //             child: const Text('Restart'),
    //             onPressed: () {
    //               setState(() {
    //                 changeQuestionIndex = 0;
    //                 score = 0;
    //               });
    //               Navigator.of(context).pop();
    //             },
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // }
  }

  late final List<String> wrongAnswer = [];

  void wrongAnswers(String selectedAns) {
    final currentQ = mcqQuestions[changeQuestionIndex];
    final correctAnswer = currentQ.answers[0];

    if (correctAnswer != selectedAns) {
      wrongAnswer.add(selectedAns);
    }
    // wrongAnswer.map((e) =>)
  }

  void onRestartMcq() {
    setState(
      () {
        changeQuestionIndex = 0;
        score = 0;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final presentQuestion = changeQuestionIndex < mcqQuestions.length
        ? mcqQuestions[changeQuestionIndex]
        : null;

    var shuffledData = presentQuestion?.getShuffledData();
    print('shuffledData $shuffledData');

    if (presentQuestion != null) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            alignment: null,
            color: Colors.deepPurple,
            height: double.infinity,
            width: double.infinity,
            // margin: const EdgeInsets.all(10.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomText(textName: presentQuestion.text),
                    const SizedBox(height: 20.0),
                    ...presentQuestion.getShuffledData().map(
                          (item) => AnswerButton(
                            buttonName: item.toUpperCase(),
                            onTap: () => {
                              handleAnswerQuestion(item),
                              wrongAnswers(item),
                            },
                          ),
                        ),
                    // AnswerButton(
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: SafeArea(
          child: Container(
            alignment: null,
            color: Colors.deepPurple,
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomText(
                      textName:
                          'Hi ${widget.enteredName} \n Your Score is: $score / ${mcqQuestions.length}',
                    ),
                    AnswerButton(
                      buttonName: 'Restart Test',
                      onTap: onRestartMcq,
                    ),
                    AnswerButton(
                      buttonName: 'Exit',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}

// ...wrongAnswer.map((item) => AnswerButton(buttonName: item))

//
// void handleAnswerQuestion(String answer) {
//   // ignore: unrelated_type_equality_checks
//   if (mcqQuestions[changeQuestionIndex].answers == answer) {
//     score++;
//   }
//   setState(() {
//     // changeQuestionIndex = changeQuestionIndex + 1;
//     // changeQuestionIndex += 1; // increment the value by 2 or whatever value
//     changeQuestionIndex++;
//     // increment the value by 1
//   });
// }

// void toHandleQuestionChange() {
//   setState(() {
//     changeQuestionIndex++;
//     if (changeQuestionIndex >= mcqQuestions.length) {
//       // Handle end of quiz or reset index to 0
//       // Here, we reset it to 0 for simplicity
//       changeQuestionIndex = 0;
//     }
//   });
// }

// void handleAnswerQuestion(String answer) {
//   if (changeQuestionIndex < mcqQuestions.length) {
//     if (mcqQuestions[changeQuestionIndex].isCorrectAnswer(answer)) {
//       setState(() {
//         score++;
//       });
//     }
//     toHandleQuestionChange();
//   }
// }

// @override
// Widget build(BuildContext context) {
//   final presentQuestion = mcqQuestions[changeQuestionIndex];
//   // print(mcqQuestions.length);
//   print(' totalQuestions ${mcqQuestions.length}');
//   return Container(
//       alignment: null,
//       margin: const EdgeInsets.all(10.00),
//       // color: Colors.redAccent,
//       child: changeQuestionIndex >= mcqQuestions.length
//           ? Column(
//               children: [
//                 CustomText(textName: presentQuestion.text),
//                 const SizedBox(height: 20.00),
//                 // spreading values (...) and mapping list
//                 ...presentQuestion.getShuffledData().map(
//                       (item) => AnswerButton(
//                         buttonName: item.toUpperCase(),
//                         onTap: () => {
//                           // handleAnswerQuestion(item),
//                           toHandleQuestionChange(),
//                         },
//                         // onTap: toHandleQuestionChange,
//                       ),
//                     ),
//                 AnswerButton(
//                   buttonName: presentQuestion.correctAnswers,
//                   onTap: () => {
//                     handleAnswerQuestion(presentQuestion.correctAnswers),
//                   },
//                 ),
//               ],
//             )
//           : Container(
//               color: null,
//               child: Column(
//                 children: [
//                   CustomText(
//                       textName:
//                           'Your Score is: $score / ${presentQuestion.answers.length}'),
//                   AnswerButton(
//                     buttonName: "Restart Test",
//                     onTap: () {
//                       onRestartMcq();
//                     },
//                   ),
//                 ],
//               ),
//             ));
// }
