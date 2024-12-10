import 'package:flutter/material.dart';
import 'package:gloves_app/connect_gloves.dart';
import 'package:gloves_app/custom_card_widget.dart';
import 'package:gloves_app/quiz.dart';
import 'package:gloves_app/learn_sign_screen.dart';
import 'package:gloves_app/transaltion_screen.dart';
import 'custom_grid_builder.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> Cards =  [
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => TransaltionScreen(text: '',))
          );
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo8.png',
          text: 'Translation',
          color: Color(0xffF2F2F2),
        ),
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => LearnSignScreen(text: '',))
          );
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo9.png',
          text: 'Learn Sign',
          color: Color(0xffF2F2F2),
        ),
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => BluetoothScreen())
          );
        },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo10.png',
          text: 'Connect Gloves',
          color: Color(0xffF2F2F2),
        ),
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen())
    );
          },
        child: CustomCardWidget(
          imagepath: 'assets/images/photo11.png',
          text: 'Quiz',
          color: Color(0xffF2F2F2),
        ),
      )
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(alignment: Alignment.topRight, children: [
                  Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffDAE0F1),
                      ),
                      height: 300,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/photo7.png',
                      )),
                  const Padding(
                      padding: EdgeInsets.only(top: 30, right: 20),
                  ),
                ]),
                CustomGridBuilder(
                  cards: Cards,
                  height: 250,
                  height2: 550,
                  color: Colors.white,
                  paddingtop: 45,
                  countitem: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}