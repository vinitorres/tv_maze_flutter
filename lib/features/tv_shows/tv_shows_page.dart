import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tv_shows_app/features/tv_shows/cubit/tv_shows_cubit.dart';
import 'package:tv_shows_app/shared/widgets/loading_with_text.dart';
import 'package:tv_shows_app/shared/widgets/tv_shows_empty.dart';

import '../../shared/widgets/tv_shows_list.dart';

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
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          title: const Text(
            'Tv Shows',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
              hintText: 'Search Tv Shows',
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
        BlocConsumer(
          bloc: cubit,
          builder: ((_, state) {
            if (state is TvShowsEmpty) {
              return TvShowEmpty('No tv shows found');
            }

            if (state is TvShowsLoaded || state is TvShowsLoadingMore) {
              return Expanded(
                child: Column(
                  children: [
                    TvShowList(
                      onLoadMore: () {
                        loadMoreTvShows();
                      },
                      tvShowList: cubit.tvShowList,
                    ),
                    if (state is TvShowsLoadingMore)
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

            if (state is TvShowsLoading) {
              return LoadingWithText(
                placeholderText: 'Loading Tv Shows',
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
