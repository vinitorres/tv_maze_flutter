import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../i18n/i18n.dart';
import '../../theme/app_sizes.dart';
import '../../widgets/loading_with_text.dart';
import '../../widgets/tv_shows_empty.dart';
import '../../widgets/tv_shows_list.dart';
import 'favorites_cubit.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

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
    return Column(
      children: [
        AppBar(
          title: Text(
            tm.strings.favorites,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSizes.defaultLargerFontSize,
            ),
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultLargerPadding,
          ),
          child: TextField(
            controller: _searchController,
            onChanged: (value) {
              setState(() {
                cubit.searchFavorites(value);
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
                          cubit.loadFavorites();
                        },
                      ),
                    )
                  : null,
              hintText: tm.strings.favoritesSearchHint,
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
        BlocBuilder<FavoritesCubit, FavoritesState>(
          bloc: cubit,
          builder: ((_, state) {
            if (state.status == FavoritesStatus.empty) {
              return TvShowEmpty(tm.strings.favoritesEmpty);
            }

            if (state.status == FavoritesStatus.loaded) {
              return Expanded(
                child: TvShowList(
                  tvShowList: (_searchController.text.isEmpty
                          ? state.favoritesList
                          : state.filtredList) ??
                      [],
                ),
              );
            }

            return LoadingWithText(
              placeholderText: tm.strings.favoritesLoading,
            );
          }),
        ),
      ],
    );
  }
}
