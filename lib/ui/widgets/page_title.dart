import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  const PageTitle({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.redAccent.withOpacity(0.9),
            ),
          ),
          if (subtitle != null)
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                subtitle!,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
        ],
      ),
    );
  }
}
