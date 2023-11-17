import 'package:flutter/material.dart';
import 'package:glasses_app/pages/fee/data_fee.dart';

class ArmorWidget extends StatefulWidget {
  const ArmorWidget({super.key});

  @override
  State<ArmorWidget> createState() => _ArmorWidgetState();
}

class _ArmorWidgetState extends State<ArmorWidget> {
  List armor = [
    ["Galenos"],
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: armor.length,
        itemBuilder: (context, index){
          return DataArmorFee(
            name: armor[index][0],
            );
        }
      ),
    );
  }
}
