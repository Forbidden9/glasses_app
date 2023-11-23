import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/pages/tips/info_tips.dart';
import 'package:glasses_app/utils/colors.dart';

class MealVisualHearth extends StatefulWidget {
  const MealVisualHearth({super.key});

  @override
  State<MealVisualHearth> createState() => _MealVisualHearthState();
}

class _MealVisualHearthState extends State<MealVisualHearth> {
  List mealTips = [
    ["Zanahoria"], ["Naranja"], ["Pimentón rojo"], ["Chocolate puro"], ["Té verde"],
    ["Huevo"], ["Lácteos y sus derivados"], ["Aceite de Oliva"], ["Semillas de girasol"],
    ["Frutos secos"], ["Ostras"], ["Uvas"], ["Maíz"], ["Brócoli"]
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
            childAspectRatio: (1 / .4)
          ),
          itemCount: mealTips.length,
          itemBuilder: (context, index){
            return MealVisualHearthInfo(
              name: mealTips[index][0],
            );
          }
        ),
      )
    );
  }
}
