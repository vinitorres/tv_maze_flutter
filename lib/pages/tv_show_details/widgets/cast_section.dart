import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_app/pages/tv_show_details/cubit/tv_show_details_cubit.dart';
import 'package:tv_shows_app/pages/tv_show_details/widgets/cast_list.dart';
import 'package:tv_shows_app/shared/constants/app_values.dart';

class CastSection extends StatelessWidget {
  CastSection({super.key, required this.cubit});

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
                fontSize: AppValues.defaultLargerFontSize, color: Colors.white),
          ),
          SizedBox(height: 8),
          BlocBuilder(
            bloc: cubit,
            buildWhen: (_, state) {
              if (state is TvShowDetailsLoadedCast ||
                  state is TvShowDetailsErrorCast ||
                  state is TvShowDetailsLoadingCast) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              if (state is TvShowDetailsLoadedCast) {
                return CastList(cast: state.cast);
              }

              if (state is TvShowDetailsErrorCast) {
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
