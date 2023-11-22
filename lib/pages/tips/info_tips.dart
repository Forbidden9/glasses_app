import 'package:flutter/material.dart';

class GlassesCarefullyInfo extends StatelessWidget {
  final String name;
  const GlassesCarefullyInfo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      // direction: Axis.horizontal,
      child: Column(
        children: [
          SizedBox(
            width: 180,
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class MealVisualHearthInfo extends StatelessWidget {
  final String name;
  const MealVisualHearthInfo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [ Column(
        children: [
          SizedBox(
            width: 180,
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          )
        ],
      )],
    );
  }
}

class VisualHearthInfo extends StatelessWidget {
  final String name;
  const VisualHearthInfo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [ Column(
        children: [
          SizedBox(
            width: 180,
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          )
        ],
      )],
    );
  }
}
