import 'package:flutter/material.dart';

class DataFee extends StatelessWidget {
  final String action;
  final int amount;
  final String currency;

  const DataFee({super.key, required this.action, required this.amount, required this.currency});

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
            Row(
              children: [
                Text(action, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              ],
            ),
            Row(
              children: [
                Text(amount.toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(currency, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ]
            ),
          ],
        )
      ),
    );
  }
}
