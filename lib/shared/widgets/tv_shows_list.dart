import 'package:flutter/material.dart';
import 'package:tv_shows_app/entities/tv_show.dart';
import 'package:tv_shows_app/shared/widgets/tv_show_item.dart';

class TvShowList extends StatefulWidget {
  TvShowList(
      {super.key, required this.tvShowList, this.onLoadMore, this.scrollable});

  final List<TvShow> tvShowList;
  final Function? onLoadMore;
  final bool? scrollable;

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
    return GridView.count(
      controller: widget.scrollable == null ? null : _scrollController,
      padding: EdgeInsets.all(16),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 0.7,
      primary: widget.scrollable == null ? true : null,
      shrinkWrap: true,
      crossAxisCount: 2,
      children: widget.tvShowList
          .map((tvShow) => TvShowItem(tvShow: tvShow))
          .toList(),
    );
  }
}
