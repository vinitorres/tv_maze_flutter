import 'package:flutter/material.dart';

import '../../../domain/entities/tv_show.dart';
import '../../theme/app_sizes.dart';
import 'widgets/tv_show_item.dart';

/// Widget to display a list of TV shows
class TvShowList extends StatefulWidget {
  /// Constructor [TvShowList]
  const TvShowList({
    super.key,
    required this.tvShowList,
    this.onLoadMore,
    this.scrollable,
  });

  /// List of TV shows
  final List<TvShow> tvShowList;

  /// Function to load more TV shows
  final Function? onLoadMore;

  /// Scrollable
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
      padding: EdgeInsets.all(AppSizes.defaultMediumPadding),
      crossAxisSpacing: AppSizes.defaultMediumPadding,
      mainAxisSpacing: AppSizes.defaultMediumPadding,
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
