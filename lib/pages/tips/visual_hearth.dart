import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/models/model_tips.dart';
import 'package:glasses_app/pages/tips/info_tips.dart';
import 'package:glasses_app/utils/colors.dart';

class VisualHearth extends StatefulWidget {
  const VisualHearth({super.key});

  @override
  State<VisualHearth> createState() => _VisualHearthState();
}

class _VisualHearthState extends State<VisualHearth> {

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
            itemCount: visualTips.length,
            itemBuilder: (context, index){
              return VisualHearthInfo(
                name: visualTips[index].text,
                detail: visualTips[index].detail,
              );
            }
          ),
        ),
      )
    );
  }
}
