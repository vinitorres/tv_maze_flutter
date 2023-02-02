import 'package:flutter/material.dart';
import 'package:tv_shows_app/entities/tv_show.dart';
import 'package:tv_shows_app/pages/favorites/cubit/favorites_cubit.dart';
import 'package:tv_shows_app/pages/tv_show_details/tv_show_details_page.dart';
import 'package:tv_shows_app/injection/dependency_injection.dart';
import 'package:tv_shows_app/navigation/navigation_routes.dart';
import 'package:tv_shows_app/shared/widgets/tv_show_empty_placeholder.dart';

class TvShowItem extends StatefulWidget {
  const TvShowItem({super.key, required this.tvShow});

  final TvShow tvShow;

  @override
  State<TvShowItem> createState() => _TvShowItemState();
}

class _TvShowItemState extends State<TvShowItem> {
  final cubit = getIt.get<FavoritesCubit>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var navigationResult = await Navigator.of(context).pushNamed(
            NavigationRoutes.tvShowDetails,
            arguments: widget.tvShow);

        if (navigationResult == true) {
          cubit.loadFavorites();
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
