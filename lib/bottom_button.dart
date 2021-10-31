import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.textLabel,@required this.onPressed});
  final Function onPressed;
  final String textLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 45.0,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            textLabel,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        color: Colors.red,
      ),
    );
  }
}
