// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'favorites_cubit.dart';

enum FavoritesStatus { initial, loading, loaded, empty }

class FavoritesState extends Equatable {
  final FavoritesStatus status;

  List<TvShow>? favoritesList;
  List<TvShow>? filtredList;

  FavoritesState({required this.status, this.favoritesList, this.filtredList});

  @override
  List<Object?> get props =>
      [this.status, this.favoritesList, this.filtredList];

  FavoritesState copyWith({
    FavoritesStatus? status,
    List<TvShow>? favoritesList,
    List<TvShow>? filtredList,
  }) {
    return FavoritesState(
      status: status ?? this.status,
      favoritesList: favoritesList ?? this.favoritesList,
      filtredList: filtredList ?? this.filtredList,
    );
  }
}
