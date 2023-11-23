import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/pages/tips/info_tips.dart';
import 'package:glasses_app/utils/colors.dart';

class GlassesCarefully extends StatefulWidget {
  const GlassesCarefully({super.key});

  @override
  State<GlassesCarefully> createState() => _GlassesCarefullyState();
}

class _GlassesCarefullyState extends State<GlassesCarefully> {
  List carefullyTips = [
    ["Limpia tus lentes con una técnica adecuada"], ["¿Cómo ponerte y quitarte los lentes?"],
    ["Usa accesorios para proteger tus lentes"], ["Nunca apoyes los lentes sobre los cristales"],
    ["Ante cualquier imperfección, lleva tus lentes con el especialista"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackgroundColor,
      body: Animate(
        effects: const[
          FadeEffect(),
          SlideEffect()
        ],
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (1 / .6)
          ),
          itemCount: carefullyTips.length,
          itemBuilder: (context, index){
            return GlassesCarefullyInfo(
              name: carefullyTips[index][0],
            );
          }
        ),
      )
    );
  }
}
