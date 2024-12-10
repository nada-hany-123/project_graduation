import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gloves_app/register.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(29, 45, 68, 1),
                    ),
                  ),
                  Image.asset('assets/images/photo.png'),
                  SizedBox(height: 20),
                  Text(
                    "Silent Voices, Loud Impact.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color.fromRGBO(29, 45, 68, 1),
                    ),
                  ),
                ],
              ),
              OnboardingPage(
                title: "Where every gesture tells a story.",
                imagePath: 'assets/images/photo2.png',
              ),
              OnboardingPage(
                title: "Speak with signs, connect with hearts.",
                imagePath: 'assets/images/photo3.png',
              ),
              OnboardingPage(
                title: "Learn Sign Language Through Interactive Courses.",
                imagePath: 'assets/images/photo4.png',
                isLastPage: true,
              ),
            ],
          ),
          if (currentPage > 0)
            Positioned(
              top: 50,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Color.fromRGBO(29, 45, 68, 1),
                ),
              ),
            ),
          if (currentPage < 3)
            Positioned(
              top: 50,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(152, 152, 152, 1),
                  ),
                ),
              ),
            ),
          if (currentPage < 3)
            Positioned(
              bottom: 30,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: Color.fromRGBO(29, 45, 68, 1),
                ),
              ),
            )
          else
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 70.0, vertical: 17.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(29, 45, 68, 1),
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}


class OnboardingPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool isLastPage;

  const OnboardingPage({
    required this.title,
    required this.imagePath,
    this.isLastPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        SizedBox(height: 50),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(29, 45, 68, 1),
          ),
        ),
      ],
    );
  }
}
