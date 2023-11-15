import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/pages/fee/data_fee.dart';
import 'package:glasses_app/utils/colors.dart';

class FeeRepair extends StatefulWidget {
  const FeeRepair({super.key});

  @override
  State<FeeRepair> createState() => _FeeRepairState();
}

class _FeeRepairState extends State<FeeRepair> {
  List fees = [
    ["Pareja de almohadillas"],
    ["Patas de espejuelos"],
    ["Pita de medio formato"],
    ["Terminales"],
    ["Tornillos"],
    ["Tornillos con tuercas"],
    ["Ajuste de espejuelos"],
    ["Soldadura simple con ajuste"],
    ["Soldadura compleja"]
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
        child: ListView.builder(
          itemCount: fees.length,
          itemBuilder: (context, index){
            return DataFeeRepair(
              action: fees[index][0],
            );
          }
        )
      ),
    );
  }
}
