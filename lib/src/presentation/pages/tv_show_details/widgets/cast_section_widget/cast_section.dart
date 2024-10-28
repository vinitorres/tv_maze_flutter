import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../shared/injection/injection.dart';
import '../../../../i18n/translations_manager.dart';
import '../../../../theme/app_sizes.dart';
import 'cast_section_state.dart';
import 'cast_section_view_model.dart';
import 'widgets/widgets.dart';

class CastSection extends StatefulWidget {
  const CastSection({super.key, required this.tvShowId});

  final int tvShowId;

  @override
  State<CastSection> createState() => _CastSectionState();
}

class _CastSectionState extends State<CastSection> {
  final viewModel = DM.get<CastSectionViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.loadCast(widget.tvShowId);
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
            tm.strings.cast,
            style: TextStyle(
              fontSize: AppSizes.defaultLargerFontSize,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: AppSizes.defaultMediumPadding),
        SizedBox(
          height: 140,
          child: BlocBuilder<CastSectionViewModel, CastSectionState>(
            bloc: viewModel,
            builder: (context, state) {
              return switch (state) {
                CastSectionStateLoaded(:final cast) => CastList(cast: cast),
                CastSectionStateError(:final message) =>
                  Center(child: Text(message)),
                _ => Center(child: CircularProgressIndicator()),
              };
            },
          ),
        ),
      ],
    );
  }
}
