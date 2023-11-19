import 'package:flutter/material.dart';
import 'package:glasses_app/pages/stock/data_stock.dart';

class AccesorioWidget extends StatefulWidget {
  const AccesorioWidget({super.key});

  @override
  State<AccesorioWidget> createState() => _AccesorioWidgetState();
}

class _AccesorioWidgetState extends State<AccesorioWidget> {
  List accesorio = [
    ["Colgantes"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: accesorio.length,
        itemBuilder: (context, index){
          return DataAccesorioFee(
            name: accesorio[index][0]
          );
        }
      ),
    );
  }
}

