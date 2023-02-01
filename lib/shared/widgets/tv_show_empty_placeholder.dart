import 'package:flutter/material.dart';

class TvShowEmptyPlaceholder extends StatelessWidget {
  const TvShowEmptyPlaceholder({Key? key}) : super(key: key);

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
          )),
        ),
      ),
    );
  }
}
