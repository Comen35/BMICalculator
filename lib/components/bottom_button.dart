import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/input_page.dart';
import '../screens/results_page.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;
  final Gender selectedGender;

  const BottomButton({
    Key? key,
    required this.selectedGender,
    required this.onTap,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: selectedGender == Gender.female
            ? const Color(0xFFEB1555)
            : Colors.blue,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
