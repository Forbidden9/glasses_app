import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:bloomix_apk/pages/location/location.dart';
import 'package:bloomix_apk/utils/social.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bloomix_apk/utils/colors.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: psBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Gap(120),
          Image.asset("lib/images/background/logo.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: IconButton(
                  onPressed: () {
                    sendMessageWhatsapp();
                  },
                  icon: Image.asset("lib/images/social/icons8_whatsapp.png"),
                  tooltip: "Whatsapp",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: IconButton(
                  onPressed: () {
                    sendMessageTelegram();
                  },
                  icon: Image.asset("lib/images/social/icons8_telegrama.png"),
                  tooltip: "Telegram",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: IconButton(
                  onPressed: () {
                    sendMessageInstagram();
                  },
                  icon: Image.asset("lib/images/social/icons8_instagram.png"),
                  tooltip: "Instagram",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: IconButton(
                  onPressed: () {
                    redirectYoutube();
                  },
                  icon: Image.asset("lib/images/social/icons8_youtube.png"),
                  tooltip: "Youtube",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: IconButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LocationPage()
                      )
                    )
                  },
                  icon: Image.asset("lib/images/social/icons8_marcador.png"),
                  tooltip: "Ubicación",
                ),
              )
            ],
          )
        ],
      ),
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

void redirectYoutube() async{
  String urlWeb = "https://youtube.com/$pYoutube";
  LaunchMode mode = LaunchMode.externalApplication;

  if (kIsWeb|| Platform.isAndroid || Platform.isIOS) {
    if (await canLaunchUrl(Uri.parse(urlWeb))) {
      await launchUrl(Uri.parse(urlWeb), mode: mode);
    }
  } else {
    throw 'There was a problem to open the url';
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
