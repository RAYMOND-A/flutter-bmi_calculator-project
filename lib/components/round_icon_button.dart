import 'package:flutter/material.dart';

class RoundIconButtons extends StatelessWidget {
  RoundIconButtons({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 40.0, height: 40.0),
      shape: CircleBorder(),
      fillColor: Colors.white10,
      onPressed: onPressed,
    );
  }
}
