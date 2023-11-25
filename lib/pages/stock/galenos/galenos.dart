import 'package:flutter/material.dart';
import 'package:bloomix_apk/pages/stock/data_stock.dart';

class GalenoWidget extends StatefulWidget {
  const GalenoWidget({super.key});

  @override
  State<GalenoWidget> createState() => _GalenoWidgetState();
}

class _GalenoWidgetState extends State<GalenoWidget> {
  List armor = [
    ["Medida +1"],
    ["Medida +1.25"],
    ["Medida +1.50"],
    ["Medida +1.75"],
    ["Medida +2"],
    ["Medida +2.25"],
    ["Medida +2.50"],
    ["Medida +2.75"],
    ["Medida +3"],
    ["Medida +3.25"],
    ["Medida +3.50"],
    ["Medida +3.75"],
    ["Medida +4"],
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: armor.length,
        itemBuilder: (context, index){
          return DataGalenoFee(
            name: armor[index][0],
          );
        }
      ),
    );
  }
}
