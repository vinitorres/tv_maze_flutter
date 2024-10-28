import 'package:flutter/material.dart';

/// Widget to display an empty placeholder for a TV show
class TvShowEmptyPlaceholder extends StatelessWidget {
  /// Constructor [TvShowEmptyPlaceholder]
  const TvShowEmptyPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Placeholder(
          child: Center(
            child: Icon(
              Icons.movie_outlined,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
