import 'package:flutter/material.dart';

class DataFeeRepair extends StatelessWidget {
  final String action;

  const DataFeeRepair({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:45, right: 45, top: 15),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(action, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ],
        )
      ),
    );
  }
}

class DataConsultFee extends StatelessWidget {
  final String name;
  const DataConsultFee({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:45, right: 45, top: 15),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ],
        )
      ),
    );
  }
}

class DataArmorFee extends StatelessWidget {
  final String name;
  const DataArmorFee({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:45, right: 45, top: 15),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
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
      margin: const EdgeInsets.only(left:45),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ],
        )
      ),
    );
  }
}
