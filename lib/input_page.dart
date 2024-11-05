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
                onGenderSelected: (String gender) { // Function object passed as parameter
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
                onHeightChanged: (int newHeight) { // Function object passed as parameter
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
                      onIncrement: () { // Function object for incrementing weight
                        setState(() {
                          weight++;
                        });
                      },
                      onDecrement: () { // Function object for decrementing weight
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
                      onIncrement: () { // Function object for incrementing age
                        setState(() {
                          age++;
                        });
                      },
                      onDecrement: () { // Function object for decrementing age
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
