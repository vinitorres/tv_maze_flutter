import 'package:flutter/material.dart';
import 'package:tv_shows_app/src/domain/entities/tv_show.dart';
import 'package:tv_shows_app/src/presentation/pages/tv_show_details/tv_show_details_cubit.dart';
import 'package:tv_shows_app/src/shared/constants/app_strings.dart';
import 'package:tv_shows_app/src/shared/constants/app_values.dart';
import 'package:tv_shows_app/src/shared/injection/dependency_injection.dart';
import 'package:tv_shows_app/src/shared/utils/string_utils.dart';

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
    super.initState();
    cubit.loadTvShowDetails(widget.tvShow);
    verifyFavorite();
  }

  verifyFavorite() async {
    var favorite = await cubit.isFavorite(widget.tvShow);
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
                        padding: EdgeInsets.symmetric(
                            horizontal: AppValues.defaultMediumPadding),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: AppValues.defaultMediumPadding),
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: IconButton(
                            icon: Icon(
                              Icons.star,
                              color: isFavorite ? Colors.yellow : Colors.white,
                            ),
                            onPressed: () {
                              cubit.addOrRemoveFromFavorites(widget.tvShow);
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
              padding: EdgeInsets.all(AppValues.defaultLargerPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    widget.tvShow.name,
                    style: TextStyle(
                        fontSize: AppValues.defaultLargerFontSize,
                        color: Colors.white),
                  ),
                  SizedBox(height: AppValues.defaultLargerPadding),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        for (final genre in widget.tvShow.genres)
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.symmetric(
                                horizontal: AppValues.defaultMediumPadding,
                                vertical: 4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(
                                  AppValues.defaultLargerPadding),
                            ),
                            child: Text(
                              genre,
                              style: TextStyle(
                                  fontSize: AppValues.defaultFontSize,
                                  color: Colors.white),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Summary',
                    style: TextStyle(
                        fontSize: AppValues.defaultMediumFontSize,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    StringUtils.removeHtmlTags(widget.tvShow.summary),
                    style: TextStyle(
                        fontSize: AppValues.defaultSmallFontSize,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: AppValues.defaultLargerPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.tvShowDetailsDaysAndTime,
                    style: TextStyle(
                        fontSize: AppValues.defaultFontSize,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${widget.tvShow.schedule.days.join(', ')}  ${AppStrings.at}  ${widget.tvShow.schedule.time}',
                    style: TextStyle(
                        fontSize: AppValues.defaultSmallFontSize,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppValues.defaultLargerPadding),
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
