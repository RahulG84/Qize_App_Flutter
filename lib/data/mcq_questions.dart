import 'package:quize_app/modules/quiz_questions.dart';

//
// class QuizQuestions {
//   final String text;
//   final List<String> answers;
//
//   const QuizQuestions(this.text, this.answers);
//
//   List<String> getShuffledData() {
//     final shuffledList = List.of(answers);
//     shuffledList.shuffle();
//     return shuffledList;
//   }
// }

// List.off --> off--> is the constructor
// its create new list based on existing list

const mcqQuestions = [
  QuizQuestions(
    "1. What programming language is used to build Flutter applications?",
    [
      ' Dart',
      'JavaScript',
      'Python',
      'C++',
    ],
  ),
  QuizQuestions(
    "2. Which Flutter widget is used to display a list of scrollable items?",
    [
      'ListView',
      'Column',
      'GridView',
      'Container',
    ],
  ),
  QuizQuestions(
    "3. Which Flutter widget is used to add padding around its child widget?",
    [
      'SizedBox',
      'Padding',
      'Container',
      'Center',
    ],
  ),
  QuizQuestions(
    "4. In Flutter, how can you navigate to a new screen?",
    [
      'Using the Router class',
      'Using the Navigator widget',
      'Using the Route class',
      'Using the ScreenManager widget',
    ],
  ),
  QuizQuestions(
    "5. What is the purpose of the setState() method in Flutter?",
    [
      'It rebuilds the widget tree and updates the UI.',
      'It triggers an animation effect on a widget.',
      'It clears the state of a StatefulWidget.',
      'It performs a network request to fetch data.',
    ],
  ),
  QuizQuestions(
    '6. What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestions(
    '7. Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestions(
    '8. What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestions(
    '9. How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestions(
    '10. Which Flutter widget is used to display an image from a network URL?',
    [
      'Image.file',
      'Image.network',
      'Image.asset',
      'Image.memory',
    ],
  ),
];
