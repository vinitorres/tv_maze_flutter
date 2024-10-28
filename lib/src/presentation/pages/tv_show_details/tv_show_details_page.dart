import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/tv_show.dart';
import '../../../shared/injection/dependency_manager.dart';
import '../../../shared/shared.dart';
import '../../i18n/i18n.dart';
import '../../theme/app_sizes.dart';
import 'tv_show_details_state.dart';
import 'tv_show_details_view_model.dart';
import 'widgets/widgets.dart';

class TvShowDetailsPage extends StatefulWidget {
  const TvShowDetailsPage({super.key, required this.tvShow});

  final TvShow tvShow;

  @override
  State<TvShowDetailsPage> createState() => _TvShowDetailsPageState();
}

class _TvShowDetailsPageState extends State<TvShowDetailsPage> {
  final viewModel = DM.get<TvShowDetailsViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.verifyFavorite(widget.tvShow);
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
                              Navigator.pop(context, true);
                              // TODO: Update page when return and favorite change
                              // Navigator.pop(context, cubit.favoritesHasChange);
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.defaultMediumPadding,
                        ),
                        child: BlocBuilder<TvShowDetailsViewModel,
                            TvShowDetailsState>(
                          bloc: viewModel,
                          builder: (context, state) {
                            return CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.black.withOpacity(0.5),
                              child: IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: state.isFavorite
                                      ? Colors.yellow
                                      : Colors.white,
                                ),
                                onPressed: () {
                                  viewModel
                                      .addOrRemoveFromFavorites(widget.tvShow);
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultMediumPadding,
                  ),
                  child: Text(
                    widget.tvShow.name,
                    style: TextStyle(
                      fontSize: AppSizes.defaultLargerFontSize,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.defaultLargerPadding),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.defaultMediumPadding,
                    ),
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
                ),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultMediumPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tm.strings.summary,
                        style: TextStyle(
                          fontSize: AppSizes.defaultMediumFontSize,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: AppSizes.defaultSmallPadding),
                      Text(
                        widget.tvShow.summary.removeHtmlTags(),
                        style: TextStyle(
                          fontSize: AppSizes.defaultSmallFontSize,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: AppSizes.defaultSmallPadding),
                      Text(
                        tm.strings.tvShowDetailsDaysAndTime,
                        style: TextStyle(
                          fontSize: AppSizes.defaultFontSize,
                          color: Colors.white,
                        ),
                      ),
                      if (widget.tvShow.schedule != null) ...[
                        SizedBox(height: AppSizes.defaultSmallPadding),
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
              ],
            ),
            SizedBox(height: AppSizes.defaultMediumPadding),
            CastSection(
              tvShowId: widget.tvShow.id,
            ),
            SizedBox(height: AppSizes.defaultMediumPadding),
            SafeArea(
              top: false,
              child: EpisodesSection(
                tvShowId: widget.tvShow.id,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
