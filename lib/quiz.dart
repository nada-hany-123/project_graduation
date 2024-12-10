import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AlphabetsQuizScreen.dart';
import 'DaysQuizScreen.dart';
import 'NumbersQuizScreen.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            QuizCard(
              title: "Numbers Quiz",
              imagePath: "assets/images/photo12.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NumbersQuizScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            QuizCard(
              title: "Alphabets Quiz",
              imagePath: "assets/images/photo13.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlphabetsQuizScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            QuizCard(
              title: "Days Quiz",
              imagePath: "assets/images/photo14.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DaysQuizScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class QuizCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  QuizCard({required this.title, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          color: Color.fromRGBO(218, 224, 241, 1),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 80, // زيادة حجم الصورة
              width: 80,
            ),
            SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 22.0, // تكبير حجم النص
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(29, 45, 68, 1),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
