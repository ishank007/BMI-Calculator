import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottmButton.dart';

class Result extends StatelessWidget {
  String bmiCount;
  String getInterpret;
  String getResult;

  Result({this.bmiCount, this.getInterpret, this.getResult});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text('Your Result', style: kTitle),
          ),
          Expanded(
            flex: 5,
            child: Reusable_card(
                colour: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      getResult,
                      style: kResultTextstyle,
                    ),
                    Text(
                      bmiCount,
                      style: kBmiTextStyle,
                    ),
                    Text(
                      getInterpret,
                      textAlign: TextAlign.center,
                      style: kConclunsionstyle,
                    ),
                  ],
                )),
          ),
          bottomButton(
            str: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
