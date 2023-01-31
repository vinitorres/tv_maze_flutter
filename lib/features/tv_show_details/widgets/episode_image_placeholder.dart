import 'package:flutter/material.dart';

class EpisodeImagePlaceholder extends StatelessWidget {
  const EpisodeImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .20,
      width: MediaQuery.of(context).size.width * .6,
      color: Colors.grey,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .17,
        width: MediaQuery.of(context).size.width * .6,
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