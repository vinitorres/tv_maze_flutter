import 'package:flutter/material.dart';
import 'package:tv_shows_app/core/data/domain/entities/tv_show.dart';
import 'package:tv_shows_app/features/tv_show_details/tv_show_details_page.dart';
import 'package:tv_shows_app/features/tv_shows/widgets/tv_show_empty_placeholder.dart';

class TvShowItem extends StatelessWidget {
  const TvShowItem({super.key, required this.tvShow});

  final TvShow tvShow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TvShowDetailsPage(tvShow: tvShow)));
      },
      child: Stack(
        children: [
          if (tvShow.posterUrl == '') TvShowEmptyPlaceholder(),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(tvShow.posterUrl),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Spacer(),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    color: Colors.black.withOpacity(0.5),
                    child: Text(
                      tvShow.name,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
