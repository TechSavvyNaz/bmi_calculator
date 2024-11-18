import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;

  const BottomButton({
    Key? key,
    required this.buttonTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLabelTextStyle,
          ),
        ),
        color: kSliderActiveColor,
        margin: EdgeInsets.only(top: 15.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 40.0,
      ),
    );
  }
}
