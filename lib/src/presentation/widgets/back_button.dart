import 'package:flutter/material.dart';

/// Widget to display a back button
class BackButton extends StatelessWidget {
  /// Constructor [BackButton]
  const BackButton({
    super.key,
    required this.onTap,
  });

  /// Function to call when the button is tapped
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.white,
      onPressed: onTap,
    );
  }
}
