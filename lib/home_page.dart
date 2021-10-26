import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleCardColor = inactiveCardColour;
  Color femaleCardColor = inactiveCardColour;

  void genderCardColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColour) {
        maleCardColor = activeCardColour;
        femaleCardColor = inactiveCardColour;
      } else {
        maleCardColor = inactiveCardColour;
      }
    } else {
      if (femaleCardColor == inactiveCardColour) {
        femaleCardColor = activeCardColour;
        maleCardColor = inactiveCardColour;
      } else {
        femaleCardColor = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI-Calculator'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          genderCardColor(Gender.male);
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColor,
                        cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          genderCardColor(Gender.female);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: ReusableCard(colour: activeCardColour),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: activeCardColour),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColour),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 45.0,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
