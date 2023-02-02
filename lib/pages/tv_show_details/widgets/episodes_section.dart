import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_app/pages/tv_show_details/cubit/tv_show_details_cubit.dart';
import 'package:tv_shows_app/pages/tv_show_details/widgets/episodes_list.dart';
import 'package:tv_shows_app/shared/constants/app_values.dart';

class EpisodesSection extends StatelessWidget {
  EpisodesSection({super.key, required this.cubit});

  final TvShowDetailsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppValues.defaultLargerPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Episodes',
            style: TextStyle(
                fontSize: AppValues.defaultLargerFontSize, color: Colors.white),
          ),
          SizedBox(height: 8),
          BlocBuilder(
            bloc: cubit,
            buildWhen: (_, state) {
              if (state is TvShowDetailsLoadingEpisodes ||
                  state is TvShowDetailsLoadedEpisodes ||
                  state is TvShowDetailsErrorEpisodes) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              if (state is TvShowDetailsLoadedEpisodes) {
                return EpisodesList(episodes: state.episodes);
              }

              if (state is TvShowDetailsErrorEpisodes) {
                return Center(child: Text('Error loading episodes'));
              }

              return Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
