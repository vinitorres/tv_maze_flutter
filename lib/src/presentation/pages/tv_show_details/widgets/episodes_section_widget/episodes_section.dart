import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../shared/injection/dependency_manager.dart';
import '../../../../i18n/i18n.dart';
import '../../../../theme/app_sizes.dart';
import 'episodes_section_state.dart';
import 'episodes_section_view_model.dart';
import 'widgets/episodes_list.dart';

/// Widget to display the episodes section
class EpisodesSection extends StatefulWidget {
  /// Constructor [EpisodesSection]
  const EpisodesSection({super.key, required this.tvShowId});

  final int tvShowId;

  @override
  State<EpisodesSection> createState() => _EpisodesSectionState();
}

class _EpisodesSectionState extends State<EpisodesSection> {
  final EpisodesSectionViewModel viewModel = DM.get<EpisodesSectionViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.loadEpisodes(widget.tvShowId);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultMediumPadding,
          ),
          child: Text(
            tm.strings.episodes,
            style: TextStyle(
              fontSize: AppSizes.defaultLargerFontSize,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: AppSizes.defaultSmallPadding),
        BlocBuilder<EpisodesSectionViewModel, EpisodesSectionState>(
          bloc: viewModel,
          builder: (context, state) {
            return switch (state) {
              EpisodesSectionStateLoaded(:final seasons) =>
                EpisodesList(seasons: seasons),
              EpisodesSectionStateError(:final message) =>
                Center(child: Text(message)),
              _ => Center(child: CircularProgressIndicator()),
            };
          },
        ),
      ],
    );
  }
}
