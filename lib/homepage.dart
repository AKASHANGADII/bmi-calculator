import 'package:flutter/material.dart';

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
                      child: BoxPanel(colour: Color(0xFF1D1E33)),
                    ),
                    Expanded(
                      child: BoxPanel(colour: Color(0xFF1D1E33)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BoxPanel(colour: Color(0xFF1D1E33)),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: BoxPanel(colour: Color(0xFF1D1E33)),
                    ),
                    Expanded(
                      child: BoxPanel(colour: Color(0xFF1D1E33)),
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
  BoxPanel({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
