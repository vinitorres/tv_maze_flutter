import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../i18n/translations.g.dart';
import '../favorites/favorites_page.dart';
import '../tv_shows/tv_shows_page.dart';

/// Home page with bottom navigation bar
class HomePage extends StatefulWidget {
  /// Constructor [HomePage]
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> pages = [TvShowsPage(), FavoritesPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'TV Shows',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: t.favorites,
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
