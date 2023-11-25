import 'package:flutter/material.dart';
import 'package:bloomix_apk/pages/fee/services.dart';
import 'package:bloomix_apk/pages/personal_information/personal_information.dart';
import 'package:bloomix_apk/pages/stock/stock.dart';
import 'package:bloomix_apk/pages/tips/tips.dart';
import 'package:bloomix_apk/utils/colors.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentpage = 0;

  final List<Widget> _pages = const [
    PersonalInformation(),
    Services(),
    Stock(),
    Tips()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentpage],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: nColor,
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
            icon: Icon(Icons.info),
            label: "Consejos")
        ]
      )
    );
  }
}
