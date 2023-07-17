import 'package:flutter/material.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/start_screen.dart';
import 'package:quize_app/utils/my_routes.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(
      () {
        activeScreen = 'questions-screen';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const StartScreen(),
        MyRoutes.startRoute: (context) => const StartScreen(),
        // MyRoutes.questionRoute: (context) =>  QuestionScreen(),
        MyRoutes.questionRoute: (context) => QuestionScreen(
              enteredName:
                  ModalRoute.of(context)?.settings.arguments as String?,
            ),
      },
      // home: Scaffold(
      //   body: SafeArea(
      //     child: Container(
      //       height: double.infinity,
      //       width: double.infinity,
      //       color: Colors.deepPurple,
      //       child: Center(
      //         child: SingleChildScrollView(
      //           child: activeScreen == 'start-screen'
      //               ? StartScreen(startQuiz: switchScreen)
      //               : const QuestionScreen(),
      //
      //           // child: QuestionScreen(),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

// @override
// void initState() {
//   activeScreen = 'questions-screen';
//   // TODO: implement initState
//   super.initState();
// }
