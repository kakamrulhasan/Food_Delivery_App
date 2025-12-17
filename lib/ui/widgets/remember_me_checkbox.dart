import 'package:flutter/material.dart';

class RememberMeCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  const RememberMeCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.deepOrange,
          hoverColor: Colors.blue.shade100,
        ),
        const Text('Remember Me'),
      ],
    );
  }
}
