import 'package:flutter/material.dart';
import 'package:glasses_app/pages/stock/data_stock.dart';

class ArmorWidget extends StatefulWidget {
  const ArmorWidget({super.key});

  @override
  State<ArmorWidget> createState() => _ArmorWidgetState();
}

class _ArmorWidgetState extends State<ArmorWidget> {
  List armor = [
    ["Modelo 1", "lib/images/stock/armor_modelo_1.jpg"],
    ["Modelo 2", "lib/images/stock/armor_modelo_2.jpg"],
    ["Modelo 3", "lib/images/stock/armor_modelo_3.jpg"],
    ["Modelo 4", "lib/images/stock/armor_modelo_4.jpg"],
    ["Modelo 5", "lib/images/stock/armor_modelo_5.jpg"],
    ["Modelo 6", "lib/images/stock/armor_modelo_6.jpg"],
    ["Modelo 7", "lib/images/stock/armor_modelo_7.png"],
    ["Modelo 8", "lib/images/stock/armor_modelo_8.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: armor.length,
        itemBuilder: (context, index){
          return DataArmorFee(
            name: armor[index][0],
            image: armor[index][1],
          );
        }
      ),
    );
  }
}