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
          BlocBuilder<TvShowDetailsCubit, TvShowDetailsState>(
            bloc: cubit,
            buildWhen: (_, state) {
              final status = state.status;
              if (status == TvShowDetailsStatus.loadedEpisodes ||
                  status == TvShowDetailsStatus.loadingEpisodes ||
                  status == TvShowDetailsStatus.errorEpisodes) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              if (state.status == TvShowDetailsStatus.loadedEpisodes) {
                return EpisodesList(episodes: state.episodes ?? []);
              }

              if (state.status == TvShowDetailsStatus.errorEpisodes) {
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
