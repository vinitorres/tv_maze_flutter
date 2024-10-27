import 'package:flutter/material.dart';

import '../theme/app_sizes.dart';

/// Widget to display a loading spinner with text
class LoadingWithText extends StatelessWidget {
  /// Constructor [LoadingWithText]
  const LoadingWithText({
    super.key,
    required this.placeholderText,
  });

  /// Placeholder text
  final String placeholderText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Text(
              placeholderText,
              style: TextStyle(
                color: Colors.white,
                fontSize: AppSizes.defaultMediumFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
