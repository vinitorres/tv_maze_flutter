import 'package:flutter/material.dart';
import 'package:tv_shows_app/core/domain/entities/tv_show.dart';
import 'package:tv_shows_app/features/tv_show_details/cubit/tv_show_details_cubit.dart';
import 'package:tv_shows_app/shared/injection/dependency_injection.dart';
import 'package:tv_shows_app/shared/utils/string_utils.dart';

import 'widgets/cast_section.dart';
import 'widgets/episodes_section.dart';

class TvShowDetailsPage extends StatefulWidget {
  TvShowDetailsPage({super.key, required this.tvShow});

  final TvShow tvShow;

  @override
  State<TvShowDetailsPage> createState() => _TvShowDetailsPageState();
}

class _TvShowDetailsPageState extends State<TvShowDetailsPage> {
  final cubit = getIt.get<TvShowDetailsCubit>();

  var isFavorite = true;

  @override
  void initState() {
    cubit.setTvShow(widget.tvShow);
    verifyFavorite();
    super.initState();
  }

  verifyFavorite() async {
    var favorite = await cubit.isFavorite();
    setState(() {
      isFavorite = favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.tvShow.posterUrl),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context, cubit.favoritesHasChange);
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: IconButton(
                            icon: Icon(
                              Icons.star,
                              color: isFavorite ? Colors.yellow : Colors.white,
                            ),
                            onPressed: () {
                              cubit.addOrRemoveFromFavorites();
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    widget.tvShow.name,
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        for (final genre in widget.tvShow.genres)
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              genre,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Summary',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    StringUtils.removeHtmlTags(widget.tvShow.summary),
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Days and Time',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.tvShow.schedule.days.join(', ') +
                        ' at ' +
                        widget.tvShow.schedule.time,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            CastSection(
              cubit: cubit,
            ),
            SafeArea(
              top: false,
              child: EpisodesSection(
                cubit: cubit,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
