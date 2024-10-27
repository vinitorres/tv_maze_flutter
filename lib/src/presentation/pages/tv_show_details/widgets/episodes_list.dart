import 'package:flutter/material.dart';

import '../../../../domain/entities/episode.dart';
import '../../../theme/app_sizes.dart';
import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({super.key, required this.episodes});

  final List<Episode> episodes;

  @override
  Widget build(BuildContext context) {
    //Filter episodes by season
    final List<List<Episode>> seasons =
        episodes.fold<List<List<Episode>>>([], (seasons, episode) {
      if (seasons.isEmpty) {
        seasons.add([episode]);
      } else {
        final lastSeason = seasons.last;
        if (lastSeason.first.season == episode.season) {
          lastSeason.add(episode);
        } else {
          seasons.add([episode]);
        }
      }
      return seasons;
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: seasons
          .map(
            (e) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Season ${e.first.season}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: AppSizes.defaultMediumFontSize,
                  ),
                ),
                SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: e
                        .map(
                          (episode) => Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: EpisodeItem(episode: episode),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
