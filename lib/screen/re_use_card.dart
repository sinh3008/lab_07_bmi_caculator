import 'package:flutter/material.dart';
class ReusebleCard extends StatelessWidget {
  ReusebleCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: cardChild,
      decoration: BoxDecoration(
        // color: Color(0XFF1D1E33),
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
