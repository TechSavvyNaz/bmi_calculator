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

  // Function to calculate BMI
  double calculateBMI() {
    return weight / ((height / 100) * (height / 100));
  }

  // Function to show BMI result in a dialog
  void showBMIDialog() {
    double bmi = calculateBMI();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Your BMI'),
          content: Text('Your BMI is ${bmi.toStringAsFixed(2)}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Gender selection row
              Row(
                children: [
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
                ],
              ),
              const SizedBox(height: 10.0), // Added spacing between rows
              // Height slider
              Row(
                children: [
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
                ],
              ),
              const SizedBox(height: 10.0), // Added spacing between rows
              // Weight and Age row
              Row(
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
              const SizedBox(height: 20.0), // Added spacing before button
              // Calculate BMI Button
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Updated to backgroundColor
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  onPressed: showBMIDialog, // Call function to show BMI dialog
                  child: const Text(
                    'Calculate BMI',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
