import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/pages/fee/data_fee.dart';
import 'package:glasses_app/utils/colors.dart';



class Fee extends StatefulWidget {
  const Fee({super.key});

  @override
  State<Fee> createState() => _FeeState();
}

class _FeeState extends State<Fee> {
  List fees = [
    ["Pareja de almohadillas", 200, "CUP"],
    ["Patas de espejuelos", 150, "CUP"],
    ["Pita de medio formato", 100, "CUP"],
    ["Terminales", 100, "CUP"],
    ["Tornillos", 70, "CUP"],
    ["Tornillos con tuercas", 150, "CUP"],
    ["Ajuste de espejuelos", 70, "CUP"],
    ["Soldadura simple con ajuste", 200, "CUP"],
    ["Soldadura compleja", 500, "CUP"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackgroundColor,
      appBar: AppBar(
        title: const Text("Tarifa de Servicios", style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: aBackgroundColor,
      ),
      body: Animate(
        effects: const[
          FadeEffect(),
          SlideEffect()
        ],
        child: ListView.builder(
          itemCount: fees.length,
          itemBuilder: (context, index){
            return DataFee(
              action: fees[index][0],
              amount: fees[index][1],
              currency: fees[index][2],
            );
          }
        )
      ),
    );
  }
}
