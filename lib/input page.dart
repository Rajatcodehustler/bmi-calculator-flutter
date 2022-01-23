import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusablewidget.dart';
import 'constants.dart';
import 'Roundiconbutton.dart';
import 'Bottom button.dart';
import 'CalculatorBMI.dart';
import 'Results page.dart';


enum gendertype {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  @override
  Color mlcardcolour = kinactivestatecl;
  Color fmcardcolour = kinactivestatecl;
  int height = 180;
  int weight = 30;
  int age=5;

  void checker(gendertype gender) {
    gender == gendertype.male
        ? (mlcardcolour == kinactivestatecl
            ? mlcardcolour = kcurrentstatecl
            : mlcardcolour = kinactivestatecl)
        : print('error');
    gender == gendertype.female
        ? (fmcardcolour == kinactivestatecl
            ? fmcardcolour = kcurrentstatecl
            : fmcardcolour = kinactivestatecl)
        : print('error');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcurrentstatecl,
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusablewidget(
                    colour: mlcardcolour,
                    cardchild: NewWidget(
                        iconsel: FontAwesomeIcons.mars, label: 'male'),
                    onpress: () {
                      setState(() {
                        checker(gendertype.male);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: reusablewidget(
                    colour: fmcardcolour,
                    cardchild: NewWidget(
                        iconsel: FontAwesomeIcons.venus, label: 'female'),
                    onpress: () {
                      setState(() {
                        checker(gendertype.female);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusablewidget(
              colour: kcurrentstatecl,
              cardchild: Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kmidwidget,
                      ),
                      Text(
                        'cm',
                        style: klabelstyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        max: 220,
                        min: 110,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Weight',
                            style: klabelstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Roundiconbutton(icons: Icons.add,addorminus: (){
                                setState(() {
                                  weight++;
                                });
                              },),
                              SizedBox(width:5),
                              Roundiconbutton(icons: Icons.remove, addorminus: (){
                                setState(() {
                                  weight--;
                                });
                              },  ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: kcurrentstatecl,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Age',
                            style: klabelstyle,
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Roundiconbutton(icons: Icons.add,addorminus: (){
                                setState(() {
                                  age++;
                                });
                              },),
                              SizedBox(width:5),
                              Roundiconbutton(icons: Icons.remove, addorminus: (){
                                setState(() {
                                  age--;
                                });
                              },  ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: kcurrentstatecl,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: kbottomContainerHeight,
            width: double.infinity,
            color: kcolours1,
            child: Bottombutton(texton: 'Calculate',onTap: (){
              calculatorBMI calc=calculatorBMI(height: height,weight: weight);
               Navigator.push(context, MaterialPageRoute(builder: (context)=> Resultspage(bmiresult:calc.calculateBMI() ,comments:calc.interpretation() ,category:calc.getresults() ,) ,),);
            },
          ),
          ),
        ],
      ),
    );
  }
}





