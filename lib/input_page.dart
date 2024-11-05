import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String selectedGender = '';
  int height = 180;
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
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'male';
                        });
                      },
                      child: RepeatContainerCode(
                        color: selectedGender == 'male'
                            ? Colors.blue
                            : const Color(0xFF1D1E33),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.male,
                              size: 80.0,
                              color: Colors.white,
                            ),
                            SizedBox(height: 13.0),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'female';
                        });
                      },
                      child: RepeatContainerCode(
                        color: selectedGender == 'female'
                            ? Colors.pink
                            : const Color(0xFF1D1E33),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female,
                              size: 80.0,
                              color: Colors.white,
                            ),
                            SizedBox(height: 13.0),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Height slider
            Expanded(
              child: RepeatContainerCode(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          ' cm',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFFDCDEEC),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 180.0,
                      activeColor: Colors.pink,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Weight and Age row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: RepeatContainerCode(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'weight--',
                                backgroundColor: const Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) weight--;
                                  });
                                },
                                child: const Icon(Icons.remove, color: Colors.white),
                              ),
                              const SizedBox(width: 10.0),
                              FloatingActionButton(
                                heroTag: 'weight++',
                                backgroundColor: const Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: const Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: RepeatContainerCode(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'age--',
                                backgroundColor: const Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) age--;
                                  });
                                },
                                child: const Icon(Icons.remove, color: Colors.white),
                              ),
                              const SizedBox(width: 10.0),
                              FloatingActionButton(
                                heroTag: 'age++',
                                backgroundColor: const Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
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

// Reusable container widget for consistent styling
class RepeatContainerCode extends StatelessWidget {
  final Color color;
  final Widget? child;

  const RepeatContainerCode({
    Key? key,
    this.color = const Color(0xFF1D1E33),
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
