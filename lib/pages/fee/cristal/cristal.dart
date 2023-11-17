import 'package:flutter/material.dart';
import 'package:glasses_app/pages/fee/data_fee.dart';

class CristalWidget extends StatefulWidget {
  const CristalWidget({super.key});

  @override
  State<CristalWidget> createState() => _CristalWidgetState();
}

class _CristalWidgetState extends State<CristalWidget> {
  List cristal = [
    ["Monofocales"],
    ["Bifocales"],
    ["Progresivos"]
    ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cristal.length,
        itemBuilder: (context, index){
          return DataCristalFee(
            name: cristal[index][0]
          );
        }
      ),
    );
  }
}
