import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../i18n/i18n.dart';
import '../../theme/app_sizes.dart';
import '../../widgets/loading_with_text.dart';
import '../../widgets/tv_shows_list_widget/tv_shows_list.dart';
import '../../widgets/tv_shows_list_widget/widgets/tv_shows_empty.dart';
import 'tv_shows_state.dart';
import 'tv_shows_view_model.dart';

class TvShowsPage extends StatefulWidget {
  const TvShowsPage({super.key});

  @override
  State<TvShowsPage> createState() => _TvShowsPageState();
}

class _TvShowsPageState extends State<TvShowsPage> {
  final viewModel = GetIt.instance.get<TvShowsViewModel>();

  var currentPage = 0;
  var clearButtonVisibility = false;

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    viewModel.loadTvShows(currentPage);
    super.initState();
  }

  void loadMoreTvShows() {
    currentPage++;
    viewModel.loadTvShows(currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tm.strings.tvShows,
          style: TextStyle(
            color: Colors.white,
            fontSize: AppSizes.defaultLargerFontSize,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultLargerPadding,
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
                  viewModel.loadTvShows(currentPage);
                } else {
                  viewModel.searchTvShows(value, currentPage);
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
                            viewModel.loadTvShows(currentPage);
                          },
                        ),
                      )
                    : null,
                hintText: tm.strings.tvShowsSearchHint,
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
      body: BlocBuilder<TvShowsViewModel, TvShowsState>(
        bloc: viewModel,
        builder: ((context, state) {
          return switch (state) {
            TvShowsStateEmpty() => TvShowEmpty(tm.strings.tvShowsEmpty),
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
                placeholderText: tm.strings.tvShowsLoading,
              ),
            TvShowsStateError() => TvShowEmpty(state.message),
          };
        }),
      ),
    );
  }
}
