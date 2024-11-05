import 'package:flutter/material.dart';
import 'IconTextFile.dart';

class GenderSelection extends StatelessWidget {
  final String selectedGender;
  final Function(String) onGenderSelected;

  const GenderSelection({required this.selectedGender, required this.onGenderSelected});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderSelected('male'),
            child: RepeatContainerCode(
              color: selectedGender == 'male' ? Colors.blue : const Color(0xFF1D1E33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.male, size: 80.0, color: Colors.white),
                  SizedBox(height: 13.0),
                  Text('MALE', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98))),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderSelected('female'),
            child: RepeatContainerCode(
              color: selectedGender == 'female' ? Colors.pink : const Color(0xFF1D1E33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.female, size: 80.0, color: Colors.white),
                  SizedBox(height: 13.0),
                  Text('FEMALE', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98))),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HeightSlider extends StatelessWidget {
  final int height;
  final ValueChanged<int> onHeightChanged;

  const HeightSlider({required this.height, required this.onHeightChanged});

  @override
  Widget build(BuildContext context) {
    return RepeatContainerCode(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('HEIGHT', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(height.toString(),
                  style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900, color: Colors.white)),
              const Text(' cm', style: TextStyle(fontSize: 18.0, color: Color(0xFFDCDEEC))),
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 100.0,
            max: 220.0,
            activeColor: Colors.pink,
            inactiveColor: const Color(0xFF8D8E98),
            onChanged: (double newValue) {
              onHeightChanged(newValue.round());
            },
          ),
        ],
      ),
    );
  }
}

class WeightAgeSelector extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const WeightAgeSelector({
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return RepeatContainerCode(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: const TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98))),
          Text(value.toString(),
              style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900, color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: '$label--',
                backgroundColor: const Color(0xFF4C4F5E),
                onPressed: onDecrement,
                child: const Icon(Icons.remove, color: Colors.white),
              ),
              const SizedBox(width: 10.0),
              FloatingActionButton(
                heroTag: '$label++',
                backgroundColor: const Color(0xFF4C4F5E),
                onPressed: onIncrement,
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
