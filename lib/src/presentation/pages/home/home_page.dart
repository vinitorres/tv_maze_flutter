import 'package:flutter/material.dart';
import 'package:tv_shows_app/src/presentation/pages/favorites/favorites_page.dart';
import 'package:tv_shows_app/src/presentation/pages/tv_shows/tv_shows_page.dart';
import 'package:tv_shows_app/src/shared/constants/app_colors.dart';
import 'package:tv_shows_app/src/shared/constants/app_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> pages = [TvShowsPage(), FavoritesPage()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: AppStrings.tvShows,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: AppStrings.favorites,
          ),
        ],
        currentIndex: _selectedIndex,
        elevation: 0,
        backgroundColor: AppColors.appBackgroundColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
