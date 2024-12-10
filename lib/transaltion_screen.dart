import 'package:flutter/material.dart';
import 'package:gloves_app/translation_glove.dart';
import 'package:gloves_app/custom_card_widget.dart';


class TransaltionScreen extends StatelessWidget {
  const TransaltionScreen({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
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
          "Translation",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(29, 45, 68, 1),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TranslationGlove(
                    text: 'Translation using glove',
                  );
                }));
              },
              child: const CustomCardWidget(
                  fontsize: 22,
                  width: double.infinity,
                  height: 150,
                  imagepath:
                  'assets/images/hand pointing somewhere.png',
                  text: 'Using Smart Glove',
                  color: Color(0xffDAE0F1)),
            ),
          ),
        ],
      ),
    );
  }
}