import 'package:flutter/material.dart';
import 'package:glasses_app/pages/fee/optica_fee.dart';
import 'package:glasses_app/pages/fee/repair_fee.dart';
import 'package:glasses_app/utils/colors.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Servicios", style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: aBackgroundColor,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                child: Text("Servicios de Reparación", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text("Servicios de Óptica", style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            FeeRepair(),
            OpticaFee()
          ]
          )
      ),
    );
  }
}
