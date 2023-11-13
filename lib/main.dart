import 'package:flutter/material.dart';

import 'pages/fee/fee.dart';
import 'pages/location/location.dart';
import 'pages/personal_information/personal_information.dart';
import 'pages/stock/stock.dart';
import 'pages/tips/tips.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'L&L Reparador de Espejuelos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, background: Colors.green[800]),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'L&L Reparador de Espejuelos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentpage = 0;

  final List<Widget> _pages = const [
    Fee(),
    Stock(),
    PersonalInformation(),
    Location(),
    Tips()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.lightBlue,
      ),
      body: _pages[_currentpage],
      bottomNavigationBar:
      BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentpage = index;
          });
        },
        currentIndex: _currentpage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: "Tarifas"),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye),
              label: "Inventario"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Contacto"),
          BottomNavigationBarItem(
              icon: Icon(Icons.pin_drop),
              label: "Ubicación"),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Consejos")
        ]
      )
    );
  }
}
