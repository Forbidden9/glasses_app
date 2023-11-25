import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:bloomix_apk/pages/stock/accesorios/accesorios.dart';
import 'package:bloomix_apk/pages/stock/armor/armor.dart';
import 'package:bloomix_apk/pages/stock/galenos/galenos.dart';
import 'package:bloomix_apk/pages/stock/cristal/cristal.dart';
import 'package:bloomix_apk/utils/colors.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              aBackgroundColor,
              Colors.white,
            ],
          )
        ),
        child: Animate(
          effects: const [
            FadeEffect(),
            SlideEffect()
          ],
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 15, top:40, right: 5),
            children: const <Widget>[
              Gap(5),
              Text("Galenos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              Gap(5),
              GalenoWidget(),
              Gap(5),
              Text("Cristales", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              Gap(5),
              CristalWidget(),
              Gap(5),
              Text("Armaduras", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              Gap(5),
              ArmorWidget(),
              Gap(5),
              Text("Accesorios", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              Gap(5),
              AccesorioWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
