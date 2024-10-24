import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/constants/app_values.dart';
import '../tv_show_details_cubit.dart';
import 'cast_list.dart';

class CastSection extends StatelessWidget {
  const CastSection({super.key, required this.cubit});

  final TvShowDetailsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppValues.defaultLargerPadding),
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast',
            style: TextStyle(
              fontSize: AppValues.defaultLargerFontSize,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          BlocBuilder<TvShowDetailsCubit, TvShowDetailsState>(
            bloc: cubit,
            buildWhen: (_, state) {
              final status = state.status;
              if (status == TvShowDetailsStatus.loadingCast ||
                  status == TvShowDetailsStatus.loadedCast ||
                  status == TvShowDetailsStatus.errorCast) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              if (state.status == TvShowDetailsStatus.loadedCast) {
                return CastList(cast: state.cast ?? []);
              }

              if (state.status == TvShowDetailsStatus.errorCast) {
                return Center(child: Text('Error loading cast'));
              }

              return Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
