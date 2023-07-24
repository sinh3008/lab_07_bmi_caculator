import 'package:flutter/material.dart';

import '../../constaints.dart';
import '../result/result_screen.dart';

class BottomButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonTitle;
  BottomButton({required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeTextButtonStyle,
          ),
        ),
      ),
    );
  }
}
