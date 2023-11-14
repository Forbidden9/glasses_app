import 'package:flutter/material.dart';
import 'package:glasses_app/pages/navigation_page/navigation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'L&L Reparador de Espejuelos',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const NavigationPage(),
    );
  }
}

