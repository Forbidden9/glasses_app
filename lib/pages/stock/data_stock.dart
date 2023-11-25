import 'package:flutter/material.dart';
import 'package:bloomix_apk/utils/colors.dart';

class DataConsultFee extends StatelessWidget {
  final String name;
  const DataConsultFee({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:5),
      decoration: BoxDecoration(
        color: bBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ],
        )
      ),
    );
  }
}

class DataGalenoFee extends StatelessWidget {
  final String name;
  const DataGalenoFee({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(223, 239, 163, 105),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset("lib/images/stock/galenos.jpg",height: 90,fit: BoxFit.fill)
                ),
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ],
            )
          ],
        )
      ),
    );
  }
}

class DataCristalFee extends StatelessWidget {
  final String name;
  const DataCristalFee({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(223, 245, 188, 147),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset("lib/images/stock/cristales.jpg",height: 90,fit: BoxFit.fill)
                ),
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ],
            )
          ],
        )
      ),
    );
  }
}

class DataArmorFee extends StatelessWidget {
  final String name;
  final String image;

  const DataArmorFee({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(223, 243, 200, 169),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(image,height: 90,fit: BoxFit.fill)
                ),
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ],
            )
          ],
        )
      ),
    );
  }
}

class DataAccesorioFee extends StatelessWidget {
  final String name;

  const DataAccesorioFee({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(224, 250, 246, 243),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Column(
              children: [ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Image.asset("lib/images/stock/colgante.webp",height: 90,fit: BoxFit.fill)
                ),
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ],
            )
            ],
          )
      ),
    );
  }
}
