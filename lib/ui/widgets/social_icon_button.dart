import 'package:flutter/material.dart';

class CircularSocialButton extends StatelessWidget {
  final String assetPath;
  final VoidCallback onPressed;

  const CircularSocialButton({
    super.key,
    required this.assetPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Ink( height: 50,width: 50,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: CircleBorder(),
        shadows: [
          BoxShadow(
            color: Colors.black54,
            
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: IconButton(
        icon: Image.asset(assetPath),
        onPressed: onPressed,
      ),
    );
  }
}
