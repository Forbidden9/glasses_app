import 'package:flutter/material.dart';
import 'package:bloomix_apk/utils/colors.dart';

class DetailFees extends StatelessWidget {
  final String image;
  const DetailFees({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Servicios", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                Image.asset(image, alignment: Alignment.center,)
              ],
            ),
          ),
        )
        )
    );
  }
}
