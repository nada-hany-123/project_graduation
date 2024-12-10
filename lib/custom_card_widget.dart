import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key,
        required this.imagepath,
        required this.text,
        required this.color,
        this.width = 120,
        this.height = 120,
        this.fontsize = 16});
  final String imagepath;
  final String text;
  final Color color;
  final double width;
  final double height;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      clipBehavior: Clip.none,
      shadowColor: Colors.grey,
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.asset(
              imagepath,
              width: width,
              height: height,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontsize),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}