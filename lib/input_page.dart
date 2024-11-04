import 'package:flutter/material.dart';

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
