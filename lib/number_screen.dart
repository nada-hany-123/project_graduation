import 'package:flutter/material.dart';
import 'package:gloves_app/custom_grid_builder.dart';
import 'package:gloves_app/custom_item_widget.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    List<CustomItemWidget> cards = const [
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319476 (1).png',
        text: '0',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319477 (1).png',
        text: '1',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319478 (1).png',
        text: '2',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319479 (1).png',
        text: '3',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319480 (1).png',
        text: '4',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319481 (1).png',
        text: '5',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319482 (1).png',
        text: '6',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319483 (1).png',
        text: '7',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319484 (1).png',
        text: '8',
      ),
      CustomItemWidget(
        imagepath: 'assets/numbers/Frame 427319485 (1).png',
        text: '9',
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomGridBuilder(
          cards: cards,
          height: 1,
          color: const Color(0xffF2F2F2),
          paddingtop: 10,
          countitem: 2,
        ),
      ),
    );
  }
}