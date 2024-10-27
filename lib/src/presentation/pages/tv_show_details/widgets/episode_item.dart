import 'package:flutter/material.dart';

import '../../../../domain/entities/episode.dart';
import '../../../../navigation/navigation_routes.dart';
import '../../../theme/app_sizes.dart';
import 'episode_image_placeholder.dart';

/// Widget to display an episode item
class EpisodeItem extends StatelessWidget {
  /// Constructor [EpisodeItem]
  const EpisodeItem({super.key, required this.episode});

  /// Episode to display
  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          NavigationRoutes.episodeDetails,
          arguments: episode,
        );
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: Colors.grey.withAlpha(80)),
        ),
        padding: const EdgeInsets.only(bottom: 8),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.width * .6,
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .17,
                child: episode.imageSource.original.isEmpty
                    ? EpisodeImagePlaceholder()
                    : Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(episode.imageSource.original),
                      ),
              ),
              Column(
                children: [
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.defaultMediumPadding,
                    ),
                    child: Text(
                      '${episode.number} : ${episode.name}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
