import 'package:bmi_calculator1/constants.dart';
import 'package:bmi_calculator1/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  final Gender selectedGender;
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage(
      {Key? key,
      required this.selectedGender,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            text: 'BMI ',
            style: GoogleFonts.righteous(
              textStyle: const TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  letterSpacing: 3.5,
                  fontWeight: FontWeight.bold),
            ),
            children: const <InlineSpan>[
              TextSpan(
                text: 'CALCULATOR',
                style: TextStyle(color: Colors.pink),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            selectedGender: selectedGender,
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
