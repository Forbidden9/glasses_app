import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/models/model_tips.dart';
import 'package:glasses_app/pages/tips/info_tips.dart';
import 'package:glasses_app/utils/colors.dart';

class GlassesCarefully extends StatefulWidget {
  const GlassesCarefully({super.key});

  @override
  State<GlassesCarefully> createState() => _GlassesCarefullyState();
}

class _GlassesCarefullyState extends State<GlassesCarefully> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Animate(
          effects: const[
            FadeEffect(),
            SlideEffect()
          ],
          child: ListView.builder(
            itemCount: carefullyTips.length,
            itemBuilder: (context, index){
              return GlassesCarefullyInfo(
                name: carefullyTips[index].text,
                detail: carefullyTips[index].detail,
              );
            }
          ),
        )
      ),
    );
  }
}
