import 'package:flutter/material.dart';
import 'package:tv_shows_app/entities/tv_show.dart';
import 'package:tv_shows_app/features/tv_shows/widgets/tv_show_item.dart';

class TvShowList extends StatelessWidget {
  TvShowList({super.key, required this.tvShowList, required this.onLoadMore});

  final List<TvShow> tvShowList;
  final Function onLoadMore;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        controller: _scrollController,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
        shrinkWrap: true,
        crossAxisCount: 2,
        children:
            tvShowList.map((tvShow) => TvShowItem(tvShow: tvShow)).toList(),
      ),
    );
  }
}
