class QuizQuestions {
  final String text;
  final List<String> answers;

  const QuizQuestions(this.text, this.answers);

  List<String> getShuffledData() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

// List.off --> off--> is the constructor
// its create new list based on existing list
