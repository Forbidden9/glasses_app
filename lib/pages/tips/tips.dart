import 'package:flutter/material.dart';
import 'package:glasses_app/pages/tips/glasses_carefully_tips.dart';
import 'package:glasses_app/pages/tips/meal_visual_hearth.dart';
import 'package:glasses_app/pages/tips/visual_hearth.dart';
import 'package:glasses_app/utils/colors.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                color: aBackgroundColor,
                child: const TabBar(
                  indicatorColor: sBackgroundColor, 
                  labelColor: cTextColor, 
                  dividerColor: cTextColor,
                  tabs: [
                    Tab(
                      child: Text("Cuidado de los lentes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    ),
                    Tab(
                      child: Text("Alimentos para la salud visual", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    ),
                    Tab(
                      child: Text("Enfermedades visuales", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    )
                  ]
                ), 
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    GlassesCarefully(),
                    MealVisualHearth(),
                    VisualHearth()
                  ]
                ),
              ), 
            ],
          
        ),
      ),
    );
  }
}
