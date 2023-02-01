import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tv_shows_app/features/favorites/cubit/favorites_cubit.dart';
import 'package:tv_shows_app/features/tv_shows/cubit/tv_shows_cubit.dart';
import 'package:tv_shows_app/features/tv_shows/widgets/tv_shows_empty.dart';
import 'package:tv_shows_app/features/tv_shows/widgets/tv_shows_list.dart';

class FavoritesPage extends StatefulWidget {
  FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final cubit = GetIt.instance.get<FavoritesCubit>();

  var clearButtonVisibility = false;

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    cubit.loadFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: const Text(
          'Favorites',
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
                if (value.isEmpty) {
                  cubit.loadFavorites();
                } else {
                  cubit.searchFavorites(value);
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
                            cubit.loadFavorites();
                          },
                        ),
                      )
                    : null,
                hintText: 'Search on favorites',
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
                if (state is FavoritesEmpty) {
                  return TvShowEmpty();
                }

                if (state is FavoritesLoaded) {
                  return TvShowList(
                    tvShowList: cubit.favoritesList,
                  );
                }

                return LoadingWithText(
                  placeholderText: 'Loading favorites...',
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

class LoadingWithText extends StatelessWidget {
  const LoadingWithText({
    super.key,
    required this.placeholderText,
  });

  final String placeholderText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          height: 76,
          child: Column(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 16,
              ),
              Text(
                placeholderText,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
