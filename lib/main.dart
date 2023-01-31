import 'package:flutter/material.dart';
import 'package:tv_shows_app/features/tv_shows/tv_shows_page.dart';
import 'package:tv_shows_app/injection/dependency_injection.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tv Shows App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(backgroundColor: Colors.black, elevation: 0),
        primarySwatch: Colors.grey,
      ),
      home: TvShowsPage(),
    );
  }
}
