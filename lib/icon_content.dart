import 'package:flutter/material.dart';
import 'constants.dart';
class NewWidget extends StatelessWidget {
  IconData iconsel;
  String label;
  NewWidget({this.iconsel,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon( iconsel,
          size: 80,
        ),
        SizedBox( height: 15,),
        Text(label, style:klabelstyle),
      ],
    );
  }
}