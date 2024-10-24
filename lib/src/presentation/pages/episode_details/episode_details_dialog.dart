import 'package:flutter/material.dart';

import '../../../domain/entities/episode.dart';
import '../../../shared/constants/app_values.dart';
import '../../../shared/utils/string_utils.dart';
import '../../i18n/translations.g.dart';

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
              if (episode.imageSource.original.isNotEmpty)
                AspectRatio(
                  aspectRatio: 5 / 3,
                  child: Image.network(
                    episode.imageSource.original,
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
                      '${t.season} ${episode.season.toString()} ${t.episode} ${episode.number.toString()}',
                      style: const TextStyle(
                        fontSize: AppValues.defaultFontSize,
                      ),
                    ),
                    const SizedBox(height: AppValues.defaultLargerPadding),
                    Text(
                      t.summary,
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
