import 'package:flutter/material.dart';
import 'constant.dart';

class bottomButton extends StatelessWidget {
  bottomButton({@required this.onTap, @required this.str});
  final Function onTap;
  final String str;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            str,
            style: kLabelbutton,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
      ),
    );
  }
}
