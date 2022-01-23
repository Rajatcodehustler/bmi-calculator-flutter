import 'package:flutter/material.dart';
import 'input page.dart';
import 'constants.dart';
import 'Bottom button.dart';

class Resultspage extends StatelessWidget {
  String bmiresult;
  String comments;
  String category;
  Resultspage({this.bmiresult,this.comments,this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25,35),
              decoration: BoxDecoration(
                  color: kcurrentstatecl,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    category,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    bmiresult,
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    comments,
                    style: TextStyle(fontSize: 25, color: Colors.white60),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: kcolours1,
              child: Bottombutton(texton:'RE-CALCULATE',onTap: (){
                Navigator.pushNamed(context, '1');
              },)
            ),
          ),
        ],
      ),
    );
  }
}
