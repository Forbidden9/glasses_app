import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/material.dart';
import 'package:glasses_app/pages/location/location.dart';
import 'package:glasses_app/utils/social.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:glasses_app/utils/colors.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackgroundColor,
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
          const Text("9:00 - 16:00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  sendMessageWhatsapp();
                },
                icon: Image.asset("lib/images/social/whatsapp_icon.png", height: 45, width: 45,),
                tooltip: "Whatsapp",
              ),
              IconButton(
                onPressed: () {
                  sendMessageTelegram();
                },
                icon: Image.asset("lib/images/social/telegram_icon.png", height: 40, width: 40,),
                tooltip: "Telegram",
              ),
              IconButton(
                onPressed: () {
                  sendMessageInstagram();
                },
                icon: Image.asset("lib/images/social/instagram_icon.png", height: 35, width: 35,),
                tooltip: "Instagram",
              ),
              IconButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LocationPage()
                    )
                  )
                },
                icon: Image.asset("lib/images/social/location_map_icon.jpg", height: 35, width: 35,),
                tooltip: "Ubicación",
              )
            ],
          )   
        ],
      )
    );
  }
}

void sendMessageWhatsapp(){
  String phone = cPhone;
  String urlWeb = "https://wa.me/send?$phone";
  String urlAndroid = "whatsapp://send/?phone=$phone";
  String urliOs = "https://wa.me/$phone";

  if (kIsWeb) {
    launchUrl(Uri.parse(urlWeb));
  } else if (Platform.isAndroid){
    launchUrl(Uri.parse(urlAndroid));
  } else if (Platform.isIOS) {
    launchUrl(Uri.parse(urliOs));
  } else {
    throw Exception("WhatsApp could not launching any url");
  }
}

void sendMessageTelegram() async {
  String url = "https://t.me/$gTelegram";
  LaunchMode mode = LaunchMode.externalApplication;

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: mode);
  } else {
    throw Exception("Telegram could not launching url");
  }
}

void sendMessageInstagram() async{
  String urlWeb = "https://www.instagram.com/$pInstagram";  
  String urlNative = "instagram://user?username=$pInstagram";
  LaunchMode mode = LaunchMode.externalApplication;

  if (kIsWeb) {
    if (await canLaunchUrl(Uri.parse(urlWeb))) {
      await launchUrl(Uri.parse(urlWeb), mode: mode);
    }
  } else if (Platform.isAndroid || Platform.isIOS) {
    if (await canLaunchUrl(Uri.parse(urlNative))) {
      await launchUrl(Uri.parse(urlNative), mode: mode);
    }
  } else {
    throw 'There was a problem to open the url';
  }
}
