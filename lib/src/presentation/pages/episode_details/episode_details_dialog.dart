import 'package:flutter/material.dart';
import 'package:tv_shows_app/src/domain/entities/episode.dart';
import 'package:tv_shows_app/src/shared/constants/app_strings.dart';
import 'package:tv_shows_app/src/shared/constants/app_values.dart';
import 'package:tv_shows_app/src/shared/utils/string_utils.dart';

class EpisodeDetailsDialog extends StatelessWidget {
  const EpisodeDetailsDialog({super.key, required this.episode});

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              if (episode.poster != '')
                AspectRatio(
                  aspectRatio: 5 / 3,
                  child: Container(
                    child: Image.network(
                      episode.poster ?? '',
                      fit: BoxFit.fill,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              Container(
                padding: const EdgeInsets.all(AppValues.defaultLargerPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      episode.name,
                      style: const TextStyle(
                        fontSize: AppValues.defaultMediumFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${AppStrings.season} ${episode.season.toString()} ${AppStrings.episode} ${episode.number.toString()}',
                      style: const TextStyle(
                        fontSize: AppValues.defaultFontSize,
                      ),
                    ),
                    const SizedBox(height: AppValues.defaultLargerPadding),
                    Text(
                      AppStrings.summary,
                      style: const TextStyle(
                        fontSize: AppValues.defaultFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      StringUtils.removeHtmlTags(episode.summary),
                      style: const TextStyle(
                        fontSize: AppValues.defaultFontSize,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
