import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tv_shows_app/src/presentation/pages/tv_shows/tv_shows_cubit.dart';
import 'package:tv_shows_app/src/shared/constants/app_strings.dart';
import 'package:tv_shows_app/src/shared/constants/app_values.dart';
import 'package:tv_shows_app/src/presentation/widgets/loading_with_text.dart';
import 'package:tv_shows_app/src/presentation/widgets/tv_shows_empty.dart';

import '../../widgets/tv_shows_list.dart';

class TvShowsPage extends StatefulWidget {
  TvShowsPage({super.key});

  @override
  State<TvShowsPage> createState() => _TvShowsPageState();
}

class _TvShowsPageState extends State<TvShowsPage> {
  final cubit = GetIt.instance.get<TvShowsCubit>();

  var currentPage = 0;
  var clearButtonVisibility = false;

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    cubit.loadTvShows(currentPage);
    super.initState();
  }

  void loadMoreTvShows() {
    currentPage++;
    cubit.loadTvShows(currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text(
            AppStrings.tvShows,
            style: TextStyle(
                color: Colors.white, fontSize: AppValues.defaultLargerFontSize),
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(
              horizontal: AppValues.defaultLargerPadding),
          child: TextField(
            controller: _searchController,
            onChanged: (value) {
              setState(() {
                clearButtonVisibility = value.isNotEmpty;
              });
            },
            onSubmitted: (value) {
              currentPage = 0;
              if (value.isEmpty) {
                cubit.loadTvShows(currentPage);
              } else {
                cubit.searchTvShows(value, currentPage);
              }
            },
            style: TextStyle(color: Colors.white.withAlpha(200)),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white.withAlpha(200),
              ),
              suffix: clearButtonVisibility
                  ? Container(
                      width: 30,
                      height: 30,
                      child: IconButton(
                        iconSize: 20,
                        icon: Icon(
                          Icons.clear,
                          color: Colors.white.withAlpha(200),
                        ),
                        onPressed: () {
                          _searchController.clear();
                          currentPage = 0;
                          cubit.loadTvShows(currentPage);
                        },
                      ),
                    )
                  : null,
              hintText: AppStrings.tvShowsSearchHint,
              filled: true,
              fillColor: Colors.grey.withAlpha(80),
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(),
              ),
            ),
          ),
        ),
        BlocConsumer<TvShowsCubit, TvShowsState>(
          bloc: cubit,
          builder: ((_, state) {
            if (state.status == TvShowsStatus.empty) {
              return TvShowEmpty(AppStrings.tvShowsEmpty);
            }

            if (state.status == TvShowsStatus.loaded ||
                state.status == TvShowsStatus.loadingMore) {
              return Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: TvShowList(
                        onLoadMore: () {
                          loadMoreTvShows();
                        },
                        tvShowList: cubit.tvShowList,
                      ),
                    ),
                    if (state.status == TvShowsStatus.loadingMore)
                      Container(
                        height: 40,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                  ],
                ),
              );
            }

            if (state.status == TvShowsStatus.loading) {
              return LoadingWithText(
                placeholderText: AppStrings.tvShowsLoading,
              );
            }

            return Container();
          }),
          listener: ((_, state) {}),
        ),
      ],
    );
  }
}