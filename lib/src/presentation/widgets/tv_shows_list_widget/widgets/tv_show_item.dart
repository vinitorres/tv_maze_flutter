import 'package:flutter/material.dart';

import '../../../../domain/entities/tv_show.dart';
import '../../../../navigation/navigation_routes.dart';
import '../../../../shared/injection/dependency_manager.dart';
import '../../../pages/favorites/favorites_cubit.dart';
import '../../../theme/app_sizes.dart';
import 'tv_show_empty_placeholder.dart';

/// Widget to display a TV show item
class TvShowItem extends StatefulWidget {
  /// Constructor [TvShowItem]
  const TvShowItem({super.key, required this.tvShow});

  /// TV show to display
  final TvShow tvShow;

  @override
  State<TvShowItem> createState() => _TvShowItemState();
}

class _TvShowItemState extends State<TvShowItem> {
  final cubit = DM.get<FavoritesViewModel>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final navigationResult = await Navigator.of(context).pushNamed(
          NavigationRoutes.tvShowDetails,
          arguments: widget.tvShow,
        );

        if (navigationResult == true) {
          cubit.loadFavorites();
        }
      },
      child: Stack(
        children: [
          if (widget.tvShow.imageSource.original.isEmpty)
            TvShowEmptyPlaceholder(),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.tvShow.imageSource.original),
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
                  color: Colors.black.withValues(alpha: 0.5),
                  child: Text(
                    widget.tvShow.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSizes.defaultFontSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
