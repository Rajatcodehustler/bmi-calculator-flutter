import 'package:flutter/material.dart';
import 'constants.dart';

class Roundiconbutton extends StatelessWidget {
  IconData icons;
  Function addorminus;
  Function minus;
  Roundiconbutton({this.icons,this.addorminus});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: addorminus,
      elevation: 6.0 ,
      constraints:  BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icons),
    );
  }
}