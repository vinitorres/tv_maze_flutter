import 'package:flutter/material.dart';
import 'package:tv_shows_app/core/domain/entities/tv_show.dart';
import 'package:tv_shows_app/features/tv_show_details/tv_show_details_page.dart';
import 'package:tv_shows_app/shared/widgets/tv_show_empty_placeholder.dart';

class TvShowItem extends StatefulWidget {
  const TvShowItem({super.key, required this.tvShow});

  final TvShow tvShow;

  @override
  State<TvShowItem> createState() => _TvShowItemState();
}

class _TvShowItemState extends State<TvShowItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var navigationResult = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    TvShowDetailsPage(tvShow: widget.tvShow)));

        if (navigationResult != null) {
          setState(() {});
        }
      },
      child: Stack(
        children: [
          if (widget.tvShow.posterUrl == '') TvShowEmptyPlaceholder(),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.tvShow.posterUrl),
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
                      widget.tvShow.name,
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
