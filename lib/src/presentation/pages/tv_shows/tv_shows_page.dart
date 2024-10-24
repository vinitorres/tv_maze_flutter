import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../shared/constants/app_values.dart';
import '../../i18n/translations.g.dart';
import '../../widgets/loading_with_text.dart';
import '../../widgets/tv_shows_empty.dart';
import '../../widgets/tv_shows_list.dart';
import 'tv_shows_cubit.dart';
import 'tv_shows_state.dart';

class TvShowsPage extends StatefulWidget {
  const TvShowsPage({super.key});

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          t.tvShows,
          style: TextStyle(
            color: Colors.white,
            fontSize: AppValues.defaultLargerFontSize,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(
              horizontal: AppValues.defaultLargerPadding,
            ),
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
                    ? SizedBox(
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
                hintText: t.tvShowsSearchHint,
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
        ),
      ),
      body: BlocBuilder<TvShowsCubit, TvShowsState>(
        bloc: cubit,
        builder: ((context, state) {
          return switch (state) {
            TvShowsStateEmpty() => TvShowEmpty(t.tvShowsEmpty),
            TvShowsStateLoaded(:final tvShowList) ||
            TvShowsStateLoadingMore(:final tvShowList) =>
              Column(
                children: [
                  Expanded(
                    child: TvShowList(
                      onLoadMore: () {
                        loadMoreTvShows();
                      },
                      tvShowList: tvShowList,
                    ),
                  ),
                  Visibility(
                    visible: state is TvShowsStateLoadingMore,
                    child: SizedBox(
                      height: 40,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ],
              ),
            TvShowsStateLoading() => LoadingWithText(
                placeholderText: t.tvShowsLoading,
              ),
            TvShowsStateError() => TvShowEmpty(state.message),
          };
        }),
      ),
    );
  }
}
