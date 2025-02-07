import 'package:flutter/material.dart';

import '../../../../../../domain/entities/episode.dart';
import '../../../../../i18n/translations_manager.dart';
import '../../../../../theme/app_sizes.dart';
import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({super.key, required this.seasons});

  final List<List<Episode>> seasons;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: seasons
          .map(
            (e) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultMediumPadding,
                  ),
                  child: Text(
                    tm.strings.seasonTitle(number: e.first.season),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSizes.defaultMediumPadding,
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.defaultSmallPadding),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: e
                        .map(
                          (episode) => Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.defaultMediumPadding,
                              vertical: AppSizes.defaultMediumPadding,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(alpha: 0.5),
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
