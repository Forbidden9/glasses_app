import 'package:bloomix_apk/pages/fee/details_fee.dart';
import 'package:flutter/material.dart';
import 'package:bloomix_apk/utils/colors.dart';

class DataFeeRepair extends StatelessWidget {
  final String action;
  final String image;

  const DataFeeRepair({super.key, required this.action, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:5, right: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title:
            Text(action, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: cTextColor)
          ),
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => DetailFees(image: image),
          //     ),
          //   );
          // },
        )
      ),
    );
  }
}

class DataFeeOptic extends StatelessWidget {
  final String action;
  final String image;

  const DataFeeOptic({super.key, required this.action, required this.image});

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:5, right: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title:
            Text(action, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: cTextColor)
          ),
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => DetailFees(image: image),
          //     ),
          //   );
          // },
        )
      ),
    );
  }
}
