import 'package:flutter/material.dart';
import 'package:tv_shows_app/features/favorites/favorites_page.dart';
import 'package:tv_shows_app/features/settings_page/settings_page.dart';
import 'package:tv_shows_app/features/tv_shows/tv_shows_page.dart';
import 'package:tv_shows_app/shared/constants/app_colors.dart';
import 'package:tv_shows_app/shared/manager/auth_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> pages = [TvShowsPage(), FavoritesPage(), SettingsPage()];

  final AuthManager authManager = AuthManager();

  @override
  void initState() {
    super.initState();
  }

  showValidationDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('You must be logged in to access the app'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'Tv Shows',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
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
