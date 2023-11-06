import 'package:flutter/material.dart';
import 'package:workshop_0211/data/questions.dart';

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 5, 37),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-neon.jpg",
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    buildContext,
                    MaterialPageRoute(
                        builder: (context) => const QuizScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 202, 96, 133),
                  foregroundColor: Colors.white),
              child: const Text(
                "START",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizScreen> {
  var num = 0;
  void changeQuiz() {
    setState(() {
      if (num < questions.length - 1) {
        num++;
      } else {}
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[num].question,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5),
              ),
              const SizedBox(height: 50),
              ...questions[num].answers.map(
                (answer) {
                  return ElevatedButton(
                    onPressed: () {
                      changeQuiz();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo[100],
                        foregroundColor: Colors.indigo,
                        minimumSize: Size(380, 40)),
                    child: Text(
                      answer,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
