import 'package:flutter/material.dart';
import 'iconcontent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderBox.dart';

const activeCardColour = Color(0xFF1D1E33);

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    child: BoxPanel(
                      colour: activeCardColour,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: BoxPanel(
                      colour: activeCardColour,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: BoxPanel(colour: activeCardColour),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: BoxPanel(colour: activeCardColour),
                  ),
                  Expanded(
                    child: BoxPanel(colour: activeCardColour),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
