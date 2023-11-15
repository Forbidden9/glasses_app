import 'package:flutter/material.dart';
import 'package:glasses_app/utils/social.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:glasses_app/utils/colors.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackgroundColor,
      appBar: AppBar(
        title: const Text("Contacto", style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: aBackgroundColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Nombre del local", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          const SizedBox(height: 20),
          Image.asset("lib/images/background/logo.jpg", height: 240, width: 240,),
          const SizedBox(height: 20),
          const Text("Horario", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          const SizedBox(height: 20),
          const Text("Lunes - Sábado", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          const SizedBox(height: 20),
          const Text("9 AM - 4 PM", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  sendMessageWhatsapp();
                },
                icon: Image.asset("lib/images/social/whatsapp_icon.png", height: 40, width: 40,),
                tooltip: "Whatsapp",
              )
            ],
          )   
        ],
      )
    );
  }
}

void sendMessageWhatsapp(){
  String contact = cPhone;
  String message = gMessage;
  String url = "https://wa.me/send?$contact?text=$message";
  launchUrl(Uri.parse(url));
}
