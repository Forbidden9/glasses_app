import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/models/model_tips.dart';
import 'package:glasses_app/pages/tips/info_tips.dart';
import 'package:glasses_app/utils/colors.dart';

class MealVisualHearth extends StatefulWidget {
  const MealVisualHearth({super.key});

  @override
  State<MealVisualHearth> createState() => _MealVisualHearthState();
}

class _MealVisualHearthState extends State<MealVisualHearth> {

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
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (1 / .4)
            ),
            itemCount: mealTips.length,
            itemBuilder: (context, index){
              return MealVisualHearthInfo(
                name: mealTips[index].text,
                detail: mealTips[index].detail
              );
            }
          ),
        ),
      )
    );
  }
}
