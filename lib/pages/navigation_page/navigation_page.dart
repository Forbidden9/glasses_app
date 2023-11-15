import 'package:flutter/material.dart';
import 'package:glasses_app/pages/fee/fee.dart';
import 'package:glasses_app/pages/location/location.dart';
import 'package:glasses_app/pages/personal_information/personal_information.dart';
import 'package:glasses_app/pages/stock/stock.dart';
import 'package:glasses_app/pages/tips/tips.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentpage = 0;

  final List<Widget> _pages = const [
    PersonalInformation(),
    Fee(),
    Stock(),
    Location(),
    Tips()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentpage],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,

        onTap: (index) {
          setState(() {
            _currentpage = index;
          });
        },
        currentIndex: _currentpage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Contacto"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Servicios",),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Inventario"),
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
