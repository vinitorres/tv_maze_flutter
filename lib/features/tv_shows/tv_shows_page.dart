import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tv_shows_app/features/tv_shows/cubit/tv_shows_cubit.dart';

import 'widgets/tv_shows_empty.dart';
import 'widgets/tv_shows_list.dart';

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
    return Scaffold(
      appBar: AppBar(
        //add button to redirect to favorites page on leading of app bar
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: const Text(
          'Tv Shows',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
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
          Expanded(
            child: BlocConsumer(
              bloc: cubit,
              builder: ((_, state) {
                if (state is TvShowsEmpty) {
                  return TvShowEmpty();
                }

                if (state is TvShowsLoaded) {
                  return TvShowList(
                    onLoadMore: () {
                      loadMoreTvShows();
                    },
                    tvShowList: state.tvShowList,
                  );
                }

                return Expanded(
                  child: Center(
                    child: Container(
                      height: 76,
                      child: Column(
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Loading Tv Shows...',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
              listener: ((_, state) {}),
            ),
          ),
        ],
      ),
    );
  }
}
