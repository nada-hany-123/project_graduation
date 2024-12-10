import 'package:flutter/material.dart';
import 'package:gloves_app/custom_grid_builder.dart';
import 'package:gloves_app/custom_item_widget.dart';


class DaysScreen extends StatelessWidget {
  const DaysScreen({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    List<CustomItemWidget> cards = const [
      CustomItemWidget(
        height: 150,
        width: 380,
        imagepath: 'assets/days/Group 160.png',
        text: 'Saturday',
      ),
      CustomItemWidget(
        imagepath: 'assets/days/Group 161.png',
        text: 'Sunday',
      ),
      CustomItemWidget(
        imagepath: 'assets/days/Group 162.png',
        text: 'Monday',
      ),
      CustomItemWidget(
        imagepath: 'assets/days/Group 163.png',
        text: 'Tuesday',
      ),
      CustomItemWidget(
        imagepath: 'assets/days/Group 164.png',
        text: 'Wednesday',
      ),
      CustomItemWidget(
        imagepath: 'assets/days/Group 165.png',
        text: 'Thuseday',
      ),
      CustomItemWidget(
        imagepath: 'assets/days/Group 166.png',
        text: 'Friday',
      ),
    ];
    return Scaffold(
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
      body: CustomGridBuilder(
        childAspectRatio: 2.0,
        cards: cards,
        height: 1,
        color: const Color(0xffF2F2F2),
        paddingtop: 10,
        countitem: 1,
      ),
    );
  }
}