import 'package:flutter/material.dart';
import 'package:gloves_app/alphabets_screen.dart';
import 'package:gloves_app/days_screen.dart';
import 'package:gloves_app/number_screen.dart';
import 'package:gloves_app/custom_card_widget.dart';
import 'package:gloves_app/custom_grid_builder.dart';


class LearnSignScreen extends StatelessWidget {
  LearnSignScreen({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Widget> Cards = [
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AlphabetsScreen(
              text: 'Alphabets',
            );
          }));
        },
        child: const CustomCardWidget(
          imagepath: 'assets/images/photo15.png',
          text: 'Alphabets',
          color: Color(0xffDAE0F1),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const NumberScreen(
              text: 'Numbers',
            );
          }));
        },
        child: const CustomCardWidget(
          imagepath: 'assets/images/photo16.png',
          text: 'Numbers',
          color: Color(0xffDAE0F1),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DaysScreen(
              text: 'Days',
            );
          }));
        },
        child: const CustomCardWidget(
          imagepath: 'assets/images/photo17.png',
          text: 'Days',
          color: Color(0xffDAE0F1),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F2F2),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
          )
        ],
        title: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: CustomGridBuilder(
          cards: Cards,
          height: 1,
          color: const Color(0xffF2F2F2),
          paddingtop: 150,
          countitem: 2,
        ),
      ),
    );
  }
}