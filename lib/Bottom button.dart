import 'package:flutter/material.dart';
import 'constants.dart';
class Bottombutton extends StatelessWidget {
  String texton;
  Function onTap;
  Bottombutton({this.texton,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Center(child: Text(texton,style: kLargebuttontext,),),

    );
  }
}