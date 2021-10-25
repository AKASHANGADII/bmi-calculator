import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                child: Row(
                  children: [
                    Expanded(
                      child: BoxPanel(
                        colour: activeCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              color: Color(0xFFFFFFFF),
                              size: 80.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: BoxPanel(colour: activeCardColour),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BoxPanel(colour: activeCardColour),
              ),
              Expanded(
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
              )
            ],
          ),
        ));
  }
}

class BoxPanel extends StatelessWidget {
  BoxPanel({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
