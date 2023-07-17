import 'package:flutter/material.dart';
import 'package:lab_07_bmi_caculator/constaints.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
