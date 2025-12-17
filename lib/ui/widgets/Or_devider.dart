import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final String text;
  const OrDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: 1, color: Colors.grey)),
        SizedBox(width: 10),
        Text(text),
        SizedBox(width: 10),
        Expanded(child: Divider(thickness: 1, color: Colors.grey)),
      ],
    );
  }
}
