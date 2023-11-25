import 'package:flutter/material.dart';
import 'package:glasses_app/pages/tips/details_tips.dart';

class GlassesCarefullyInfo extends StatelessWidget {
  final String name;
  final String detail;
  const GlassesCarefullyInfo({super.key, required this.name, required this.detail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        textAlign: TextAlign.center,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailTips(detail: detail),
          ),
        );
      },
    );
  }
}

class MealVisualHearthInfo extends StatelessWidget {
  final String name;
  final String detail;
  const MealVisualHearthInfo({super.key, required this.name, required this.detail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        textAlign: TextAlign.center,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailTips(detail: detail),
          ),
        );
      },
    );
  }
}

class VisualHearthInfo extends StatelessWidget {
  final String name;
  final String detail;
  const VisualHearthInfo({super.key, required this.name, required this.detail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        textAlign: TextAlign.center,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailTips(detail: detail),
          ),
        );
      },
    );
  }
}