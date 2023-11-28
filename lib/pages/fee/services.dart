import 'package:flutter/material.dart';
import 'package:bloomix_apk/pages/fee/optica_fee.dart';
import 'package:bloomix_apk/pages/fee/repair_fee.dart';
import 'package:bloomix_apk/utils/colors.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 75,
              color: aBackgroundColor,
              child: const TabBar(
                indicatorColor: sBackgroundColor, 
                labelColor: cTextColor, 
                dividerColor: cTextColor,
                tabs: [
                  Tab(
                    child: Text("REPARACIÓN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  ),
                  Tab(
                    child: Text("ÓPTICA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
      )
    );
  }
}
