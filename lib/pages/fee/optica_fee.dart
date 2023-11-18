import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/pages/fee/armor/armor.dart';
import 'package:glasses_app/pages/fee/consult/consult.dart';
import 'package:glasses_app/pages/fee/cristal/cristal.dart';
import 'package:glasses_app/pages/fee/data_fee.dart';
import 'package:glasses_app/utils/colors.dart';

class FeeOptic extends StatefulWidget {
  const FeeOptic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackgroundColor,
      body: Animate(
        effects: const[
          FadeEffect(),
          SlideEffect()
        ],
        child: ListView.builder(
          itemCount: fees.length,
          itemBuilder: (context, index){
            return DataFeeOptic(
              action: fees[index][0],
            );
          }
        )
      ),
    );
  }
}
