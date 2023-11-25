import 'package:flutter/material.dart';
import 'package:glasses_app/utils/colors.dart';

class DetailTips extends StatelessWidget {
  final String detail;
  const DetailTips({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consejos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        backgroundColor: aBackgroundColor,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 12, right: 12),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              aBackgroundColor,
            Colors.white,
            ],
          )
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  detail.replaceAll("|", "\n"),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ),
        )
        )
    );
  }
}
