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
