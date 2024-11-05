import 'package:flutter/material.dart';

class GenderSelection extends StatelessWidget {
  final String selectedGender;
  final Function(String) onGenderSelected;
  final double iconSize;
  final double fontSize;

  const GenderSelection({
    required this.selectedGender,
    required this.onGenderSelected,
    this.iconSize = 60.0, // Default icon size
    this.fontSize = 16.0, // Default font size
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderSelected('male'),
            child: Container(
              color: selectedGender == 'male' ? Colors.blue : Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.male, size: iconSize, color: Colors.white),
                  Text(
                    'MALE',
                    style: TextStyle(fontSize: fontSize, color: Color(0xFF8D8E98)),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderSelected('female'),
            child: Container(
              color: selectedGender == 'female' ? Colors.pink : Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.female, size: iconSize, color: Colors.white),
                  Text(
                    'FEMALE',
                    style: TextStyle(fontSize: fontSize, color: Color(0xFF8D8E98)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
