import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quize_app/utils/my_routes.dart';
import 'package:quize_app/widget/custom_text.dart';
import 'package:quize_app/widget/custom_textinput.dart';

class StartScreen extends StatefulWidget {
  final String? enteredName;

  const StartScreen({Key? key, this.enteredName}) : super(key: key);

  // const StartScreen(this.startQuiz, {super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  String userName = '';
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // height: double.infinity,
          height: double.infinity,
          width: double.infinity,
          color: Colors.deepPurple,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage("lib/assets/images/quiz-logo.png"),
                    width: 300,
                    height: 300,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(
                    height: 40.00,
                  ),
                  Text(
                    "Learn Flutter the fun way!",
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 40.00,
                  ),
                  CustomTextFiled(
                    nameControler: nameController,
                    // onChangeText: (text) {
                    //   setState(
                    //     () {
                    //       userName = text;
                    //     },
                    //   );
                    // },
                  ),
                  const SizedBox(
                    height: 40.00,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: null,
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          print('nameController :  $nameController');
                          Navigator.pushNamed(
                            context,
                            MyRoutes.questionRoute,
                            arguments: nameController.text,
                            // arguments: userName,
                          );
                        },
                        style: TextButton.styleFrom(
                          minimumSize: const Size(150, 50),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 2.00,
                            color: Colors.black,
                          ),
                        ),
                        label: const Text(
                          "Start Quiz",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        icon: const Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50.00,
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
