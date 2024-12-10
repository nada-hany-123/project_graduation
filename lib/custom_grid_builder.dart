import 'package:flutter/material.dart';

class CustomGridBuilder extends StatelessWidget {
  const CustomGridBuilder(
      {super.key,
        required this.cards,
        required this.height,
        required this.color,
        this.height2,
        required this.paddingtop,
        required this.countitem,
        this.childAspectRatio = 0.9});
  final List<Widget> cards;
  final double height;
  final double? height2;
  final Color color;
  final double paddingtop;
  final int countitem;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: color),
        height: height2,
        child: GridView.builder(
          physics: const RangeMaintainingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: childAspectRatio,
            crossAxisCount: countitem, // number of items in each row
            mainAxisSpacing: 27.0, // spacing between rows
            crossAxisSpacing: 15.0, // spacing between columns
          ),
          padding: EdgeInsets.only(
              left: 10, right: 10, top: paddingtop), // padding around the grid
          itemCount: cards.length, // total number of items
          itemBuilder: (context, index) {
            return cards[index];
          },
        ),
      ),
    );
  }
}