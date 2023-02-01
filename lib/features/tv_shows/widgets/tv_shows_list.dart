import 'package:flutter/material.dart';
import 'package:tv_shows_app/core/data/domain/entities/tv_show.dart';
import 'package:tv_shows_app/features/tv_shows/widgets/tv_show_item.dart';

class TvShowList extends StatefulWidget {
  TvShowList({super.key, required this.tvShowList, this.onLoadMore});

  final List<TvShow> tvShowList;
  final Function? onLoadMore;

  @override
  State<TvShowList> createState() => _TvShowListState();
}

class _TvShowListState extends State<TvShowList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        widget.onLoadMore!();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        controller: _scrollController,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
        shrinkWrap: true,
        crossAxisCount: 2,
        children: widget.tvShowList
            .map((tvShow) => TvShowItem(tvShow: tvShow))
            .toList(),
      ),
    );
  }
}
