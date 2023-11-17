import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_app/pages/fee/armor/armor.dart';
import 'package:glasses_app/pages/fee/consult/consult.dart';
import 'package:glasses_app/pages/fee/cristal/cristal.dart';
import 'package:glasses_app/utils/colors.dart';

class OpticaFee extends StatelessWidget {
  const OpticaFee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackgroundColor,
      body: Animate(
        effects: const [
          FadeEffect(),
          SlideEffect()
        ],
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(5),
          children: const <Widget>[
            Text("Servicios de consultas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            ConsultWidget(),
            Text("Venta de armaduras", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            ArmorWidget(),
            Text("Venta de cristales", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            CristalWidget(),
            ],
        ),
      ),
    );
  }
}
