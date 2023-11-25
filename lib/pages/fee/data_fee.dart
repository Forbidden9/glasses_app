import 'package:flutter/material.dart';
import 'package:bloomix_apk/utils/colors.dart';

class DataFeeRepair extends StatelessWidget {
  final String action;

  const DataFeeRepair({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:5, right: 5, top: 5),
      padding: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(action, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: cTextColor)),
          ],
        )
      ),
    );
  }
}

class DataFeeOptic extends StatelessWidget {
  final String action;

  const DataFeeOptic({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:5, right: 5, top: 5),
      padding: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(action, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: cTextColor)),
          ],
        )
      ),
    );
  }
}
