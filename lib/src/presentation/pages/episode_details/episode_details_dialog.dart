import 'package:flutter/material.dart';

import '../../../domain/domain.dart';
import '../../../shared/shared.dart';
import '../../i18n/i18n.dart';
import '../../theme/theme.dart';

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
                padding: const EdgeInsets.all(AppSizes.defaultLargerPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      episode.name,
                      style: const TextStyle(
                        fontSize: AppSizes.defaultMediumFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${tm.strings.season} ${episode.season.toString()} ${tm.strings.episode} ${episode.number.toString()}',
                      style: const TextStyle(
                        fontSize: AppSizes.defaultFontSize,
                      ),
                    ),
                    const SizedBox(height: AppSizes.defaultLargerPadding),
                    Text(
                      tm.strings.summary,
                      style: const TextStyle(
                        fontSize: AppSizes.defaultFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      episode.summary.removeHtmlTags(),
                      style: const TextStyle(
                        fontSize: AppSizes.defaultFontSize,
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
