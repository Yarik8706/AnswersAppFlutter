import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {

  final icons;
  final count;
  final total;

  const ProgressBar({Key? key, this.icons, this.count, this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count - $total'
            ),
          ),
          const SizedBox(width: 10),
          ...icons
        ],
      ),
    );
  }
}
