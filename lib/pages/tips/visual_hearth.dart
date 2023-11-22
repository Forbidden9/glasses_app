import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/pages/tips/info_tips.dart';
import 'package:glasses_app/utils/colors.dart';

class VisualHearth extends StatefulWidget {
  const VisualHearth({super.key});

  @override
  State<VisualHearth> createState() => _VisualHearthState();
}

class _VisualHearthState extends State<VisualHearth> {
  List visualTips = [
    ["Miopia"], ["Astigmatismo"], ["Cataratas"], ["Glaucoma"], ["Hipermetropía"],
    ["Daltonismo"], ["La degeneración macular"], ["Ojo Vago"], ["Presbicia"],
    ["Fotoqueratitis"],
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
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: visualTips.length,
          itemBuilder: (context, index){
            return VisualHearthInfo(
              name: visualTips[index][0],
            );
          }
        ),
      )
    );
  }
}
