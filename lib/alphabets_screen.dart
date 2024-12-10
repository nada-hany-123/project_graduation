import 'package:flutter/material.dart';
import 'package:gloves_app/custom_grid_builder.dart';
import 'package:gloves_app/custom_item_widget.dart';

class AlphabetsScreen extends StatefulWidget {
  const AlphabetsScreen({super.key, required this.text});
  final String text;

  @override
  State<AlphabetsScreen> createState() => _AlphabetsScreenState();
}

class _AlphabetsScreenState extends State<AlphabetsScreen> {
  @override
  Widget build(BuildContext context) {
    List<CustomItemWidget> cards = const [
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319476.png',
        text: 'A',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319477.png',
        text: 'B',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319478.png',
        text: 'C',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319479.png',
        text: 'D',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/image 102.png',
        text: 'E',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/image 103.png',
        text: 'F',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319482.png',
        text: 'G',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319483.png',
        text: 'H',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319484.png',
        text: 'I',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319485.png',
        text: 'J',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319486.png',
        text: 'K',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319487.png',
        text: 'L',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319488.png',
        text: 'M',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319489.png',
        text: 'N',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319490.png',
        text: 'O',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319491.png',
        text: 'P',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/image 114.png',
        text: 'Q',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319493.png',
        text: 'R',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319494.png',
        text: 'S',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319495.png',
        text: 'T',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319496.png',
        text: 'U',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319497.png',
        text: 'V',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319498.png',
        text: 'W',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319499.png',
        text: 'X',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319500.png',
        text: 'Y',
      ),
      CustomItemWidget(
        imagepath: 'assets/alphabets/Frame 427319501.png',
        text: 'Z',
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
          widget.text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomGridBuilder(
        cards: cards,
        height: 1,
        color: const Color(0xffF2F2F2),
        paddingtop: 10,
        countitem: 2,
      ),
    );
  }
}