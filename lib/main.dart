import 'package:flutter/material.dart';
import 'package:quize_app/quiz.dart';
// import 'package:quize_app/simple_quize.dart';

// void main() {
//   runApp(const QuizApp());
// }

// class Question {
//   final String questionText;
//   final bool correctAnswer;
//
//   Question(this.questionText, this.correctAnswer);
// }

void main() => runApp(const QuizApp());

// class QuizApp extends StatelessWidget {
//   const QuizApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Quiz App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const QuizPage(),
//     );
//   }
// }
//
// class QuizPage extends StatefulWidget {
//   const QuizPage({super.key});
//
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   int _questionIndex = 0;
//   int _score = 0;
//
//   final List<Question> _questions = [
//     Question('Question 1: Flutter is developed by Google.', true),
//     Question(
//         'Question 2: Dart is a statically typed programming language.', false),
//     Question('Question 3: Widgets in Flutter are immutable.', true),
//   ];
//
//   void _answerQuestion(bool answer) {
//     if (_questions[_questionIndex].correctAnswer == answer) {
//       _score++;
//     }
//
//     setState(() {
//       _questionIndex++;
//     });
//
//     if (_questionIndex >= _questions.length) {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('Quiz Complete'),
//             content: Text('Your score: $_score / ${_questions.length}'),
//             actions: <Widget>[
//               TextButton(
//                 child: const Text('Restart'),
//                 onPressed: () {
//                   setState(() {
//                     _questionIndex = 0;
//                     _score = 0;
//                   });
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('_questionIndex $_questionIndex');
//     print('_questions.length ${_questions.length}');
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Quiz App'),
//       ),
//       body: _questionIndex < _questions.length
//           ? Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   _questions[_questionIndex].questionText,
//                   style: const TextStyle(fontSize: 20),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   child: const Text('True'),
//                   onPressed: () => _answerQuestion(true),
//                 ),
//                 ElevatedButton(
//                   child: const Text('False'),
//                   onPressed: () => _answerQuestion(false),
//                 ),
//               ],
//             )
//           : Container(),
//     );
//   }
// }
