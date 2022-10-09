import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentIndicator extends StatelessWidget {
  const PercentIndicator({
    Key? key,
    required this.percent,
    required this.percent_value,
  }) : super(key: key);
  final String percent;
  final double percent_value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:  CircularPercentIndicator(
        radius: 50.0,
        lineWidth: 13.0,
        animation: true,
        percent: 0.75,
        center:  Text(
          percent,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.white,
      ),
    );
  }
}