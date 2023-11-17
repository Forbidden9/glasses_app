import 'package:flutter/material.dart';
import 'package:glasses_app/pages/fee/data_fee.dart';

class ConsultWidget extends StatefulWidget {
  const ConsultWidget({super.key});

  @override
  State<ConsultWidget> createState() => _ConsultWidgetState();
}

class _ConsultWidgetState extends State<ConsultWidget> {
  List consult = [
    ["Medición  de la vista"],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: consult.length,
        itemBuilder: (context, index){
          return DataConsultFee(
            name: consult[index][0]
          );
        }
      ),
    );
  }
}
