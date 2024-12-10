import 'package:flutter/material.dart';
import 'package:gloves_app/number_screen.dart';
import 'package:gloves_app/quiz.dart';

class NumbersQuizScreen extends StatefulWidget {
  @override
  _NumbersQuizScreen createState() => _NumbersQuizScreen();
}

class _NumbersQuizScreen extends State<NumbersQuizScreen> {
  int currentQuestion = 1;
  final int totalQuestions = 5;

  List<String> correctAnswers = ['2', '3', '9', '8', '4'];
  List<String> userAnswers = ['', '', '', '', ''];
  List<int> selectedOption = [-1, -1, -1, -1, -1];

  List<List<String>> options = [
    ['2', '1', '4'],
    ['5', '3', '8'],
    ['7', '9', '6'],
    ['8', '4', '2'],
    ['8', '4', '7'],
  ];

  void nextQuestion() {
    if (currentQuestion < totalQuestions) {
      setState(() {
        currentQuestion++;
      });
    }
  }

  void previousQuestion() {
    if (currentQuestion > 1) {
      setState(() {
        currentQuestion--;
      });
    }
  }

  void submitAnswers() {
    bool allCorrect = true;

    for (int i = 0; i < totalQuestions; i++) {
      if (userAnswers[i].trim() != correctAnswers[i].trim()) {
        allCorrect = false;
        break;
      }
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(happy: allCorrect),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(29, 45, 68, 1),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    "Q$currentQuestion/$totalQuestions",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(16),
                  value: currentQuestion / totalQuestions,
                  backgroundColor: Colors.grey[300],
                  color: Colors.green,
                  minHeight: 10,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              width: 300,
              height: 240,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Identify the Number",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    "assets/numbers/image $currentQuestion.png",
                    height: 120,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Column(
              children: List.generate(3, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedOption[currentQuestion - 1] = index;
                      userAnswers[currentQuestion - 1] = options[currentQuestion - 1][index];
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
                    decoration: BoxDecoration(
                      color: selectedOption[currentQuestion - 1] == index
                          ? Colors.green
                          : const Color.fromRGBO(29, 45, 68, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Number ${options[currentQuestion - 1][index]}",
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // زر Previous
                TextButton(
                  onPressed: currentQuestion > 1 ? previousQuestion : null,
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        "Previous",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                if (currentQuestion < totalQuestions)
                  TextButton(
                    onPressed: nextQuestion,
                    child: Row(
                      children: const [
                        Text(
                          "Next",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
                      ],
                    ),
                  )
                else
                  ElevatedButton(
                    onPressed: submitAnswers,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text("Submit",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
              ],
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class ResultScreen extends StatelessWidget {
  final bool happy;

  const ResultScreen({required this.happy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Quiz",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(29, 45, 68, 1),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              happy ? "Great Job!" : "Keep Trying!",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              happy
                  ? "You're becoming a math pro!"
                  : "Don't worry, you're improving with each attempt.",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 36),
            happy
                ? Image.asset("assets/images/chatgpt robot with heart.png", height: 200)
                : Image.asset("assets/images/sad and confused chatGPT robot.png", height: 200),
            const SizedBox(height: 24),

            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  happy
                      ? MaterialPageRoute(builder: (context) => NumberScreen(text: ''))
                      : MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(29, 45, 68, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),),
              child: happy
                  ? Text("Learn More", style: TextStyle(color: Colors.white,fontSize: 22))
                  : Text("Try again", style: TextStyle(color: Colors.white,fontSize: 27),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(218, 224, 241, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),),
              child: const Text("Back to Home",
                style: TextStyle(color: Color.fromRGBO(29, 45, 68, 1),fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
