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
        body: Padding( 
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                color: aBackgroundColor,
                child: const TabBar(
                  indicatorColor: sBackgroundColor, 
                  labelColor: cTextColor, 
                  dividerColor: cTextColor,
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
              const Expanded(
                child: TabBarView(children: [
                  FeeRepair(),
                  FeeOptic()
                ]), 
              ) 
            ], 
          ), 
        ), 
      )
    );
  }
}
