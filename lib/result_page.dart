import 'dart:ui';

import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';
import 'home_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            'Your result',
            textAlign: TextAlign.left,
            style: kTitleTextStyle,
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kBmiReportTextStyle,
                    ),
                    Text(
                      bmiResult,
                      textAlign: TextAlign.center,
                      style: kBmiResultNumStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBmiRemarksTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            textLabel: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
