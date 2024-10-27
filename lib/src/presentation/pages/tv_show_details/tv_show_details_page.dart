import 'package:flutter/material.dart';

import '../../../domain/entities/tv_show.dart';
import '../../../infrastructure/injection/dependency_injection.dart';
import '../../../shared/shared.dart';
import '../../i18n/i18n.dart';
import '../../theme/app_sizes.dart';
import 'tv_show_details_cubit.dart';
import 'widgets/cast_section.dart';
import 'widgets/episodes_section.dart';

class TvShowDetailsPage extends StatefulWidget {
  const TvShowDetailsPage({super.key, required this.tvShow});

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
    final favorite = await cubit.isFavorite(widget.tvShow);
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
                      image: NetworkImage(widget.tvShow.imageSource.original),
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
                          horizontal: AppSizes.defaultMediumPadding,
                        ),
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
                          horizontal: AppSizes.defaultMediumPadding,
                        ),
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
              padding: EdgeInsets.all(AppSizes.defaultLargerPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    widget.tvShow.name,
                    style: TextStyle(
                      fontSize: AppSizes.defaultLargerFontSize,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: AppSizes.defaultLargerPadding),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        for (final genre in widget.tvShow.genres)
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.defaultMediumPadding,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(
                                AppSizes.defaultLargerPadding,
                              ),
                            ),
                            child: Text(
                              genre,
                              style: TextStyle(
                                fontSize: AppSizes.defaultFontSize,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Summary',
                    style: TextStyle(
                      fontSize: AppSizes.defaultMediumFontSize,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.tvShow.summary.removeHtmlTags(),
                    style: TextStyle(
                      fontSize: AppSizes.defaultSmallFontSize,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.defaultLargerPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tm.strings.tvShowDetailsDaysAndTime,
                    style: TextStyle(
                      fontSize: AppSizes.defaultFontSize,
                      color: Colors.white,
                    ),
                  ),
                  if (widget.tvShow.schedule != null) ...[
                    SizedBox(height: 8),
                    Text(
                      '${widget.tvShow.schedule?.days.join(', ')}  ${tm.strings.at}  ${widget.tvShow.schedule?.time}',
                      style: TextStyle(
                        fontSize: AppSizes.defaultSmallFontSize,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(height: AppSizes.defaultLargerPadding),
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
