import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

/// Widget to display a message when there are no TV shows
class TvShowEmpty extends StatelessWidget {
  /// Constructor [TvShowEmpty]
  const TvShowEmpty(this.message, {super.key});

  /// Message to display
  final String message;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          message,
          style: TextStyle(
            color: AppColors.textPrimaryColor,
            fontSize: AppSizes.defaultMediumFontSize,
          ),
        ),
      ),
    );
  }
}
