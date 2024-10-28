import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../i18n/i18n.dart';
import '../../theme/theme.dart';
import '../../widgets/widgets.dart';
import 'favorites_cubit.dart';
import 'favorites_state.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final viewModel = GetIt.instance.get<FavoritesViewModel>();

  var clearButtonVisibility = false;

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    viewModel.loadFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesViewModel, FavoritesState>(
      bloc: viewModel,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              tm.strings.favorites,
              style: TextStyle(
                color: Colors.white,
                fontSize: AppSizes.defaultLargerFontSize,
              ),
            ),
            bottom: ((state is FavoritesStateLoaded) &&
                    state.favoritesList.isNotEmpty)
                ? PreferredSize(
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
                            viewModel.searchFavorites(value);
                            clearButtonVisibility = value.isNotEmpty;
                          });
                        },
                        onSubmitted: (value) {
                          if (value.isEmpty) {
                            viewModel.loadFavorites();
                          } else {
                            viewModel.searchFavorites(value);
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
                                      viewModel.loadFavorites();
                                    },
                                  ),
                                )
                              : null,
                          hintText: tm.strings.favoritesSearchHint,
                          filled: true,
                          fillColor: Colors.grey.withAlpha(80),
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                  )
                : null,
          ),
          body: Column(
            children: [
              switch (state) {
                FavoritesStateEmpty() => TvShowEmpty(tm.strings.favoritesEmpty),
                FavoritesStateLoading() => LoadingWithText(
                    placeholderText: tm.strings.favoritesLoading,
                  ),
                FavoritesStateLoaded() => Expanded(
                    child: TvShowList(
                      tvShowList: (_searchController.text.isEmpty
                          ? state.favoritesList
                          : state.filtredList),
                    ),
                  ),
                FavoritesStateError(:final message) => Center(
                    child: TvShowEmpty(message),
                  ),
              },
            ],
          ),
        );
      },
    );
  }
}
