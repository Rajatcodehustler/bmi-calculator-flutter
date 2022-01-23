import 'package:flutter/material.dart';
import 'constants.dart ';
class reusablewidget extends StatelessWidget {


  reusablewidget({@required this.colour, this.cardchild,this.onpress});
  Color colour;
  Widget cardchild;
  Function onpress;

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onpress,
        child: Container(
          child: cardchild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration( color: colour,borderRadius: BorderRadius.circular(10)),
        ),
      );
  }
}