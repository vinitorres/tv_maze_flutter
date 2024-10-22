import 'package:flutter/material.dart';
import 'package:tv_shows_app/src/shared/constants/app_values.dart';

class TvShowEmpty extends StatelessWidget {
  const TvShowEmpty(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          message,
          style: TextStyle(
              color: Colors.white, fontSize: AppValues.defaultMediumFontSize),
        ),
      ),
    );
  }
}
