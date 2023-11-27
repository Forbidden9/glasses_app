import 'package:bloomix_apk/models/model_fee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:bloomix_apk/pages/fee/data_fee.dart';
import 'package:bloomix_apk/utils/colors.dart';

class FeeOptic extends StatefulWidget {
  const FeeOptic({super.key});

  @override
  State<FeeOptic> createState() => _FeeOpticState();
}

class _FeeOpticState extends State<FeeOptic> {

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
            itemCount: opticaFees.length,
            itemBuilder: (context, index){
              return DataFeeOptic(
                action: opticaFees[index].text,
                image: opticaFees[index].image
              );
            }
          )
        ),
      ),
    );
  }
}
