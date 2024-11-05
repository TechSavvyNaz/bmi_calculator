import 'package:flutter/material.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  String selectedGender = '';
  int height = 150;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Gender selection row
            Expanded(
              child: GenderSelection(
                selectedGender: selectedGender,
                onGenderSelected: (String gender) {
                  setState(() {
                    selectedGender = gender;
                  });
                },
              ),
            ),
            // Height slider
            Expanded(
              child: HeightSlider(
                height: height,
                onHeightChanged: (int newHeight) {
                  setState(() {
                    height = newHeight;
                  });
                },
              ),
            ),
            // Weight and Age row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: WeightAgeSelector(
                      label: 'WEIGHT',
                      value: weight,
                      onIncrement: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          if (weight > 0) weight--;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: WeightAgeSelector(
                      label: 'AGE',
                      value: age,
                      onIncrement: () {
                        setState(() {
                          age++;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          if (age > 0) age--;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
