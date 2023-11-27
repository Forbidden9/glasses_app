import 'package:bloomix_apk/models/model_fee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:bloomix_apk/pages/fee/data_fee.dart';
import 'package:bloomix_apk/utils/colors.dart';

class FeeRepair extends StatefulWidget {
  const FeeRepair({super.key});

  @override
  State<FeeRepair> createState() => _FeeRepairState();
}

class _FeeRepairState extends State<FeeRepair> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
              itemCount: repairFees.length,
              itemBuilder: (context, index){
                return DataFeeRepair(
                  action: repairFees[index].text,
                  image:repairFees[index].image
                );
              }
            )
          ),
        ),
      ),



    );
  }
}
