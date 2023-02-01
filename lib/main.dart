import 'package:flutter/material.dart';
import 'package:tv_shows_app/features/tv_shows/tv_shows_page.dart';
import 'package:tv_shows_app/shared/constants/app_colors.dart';
import 'package:tv_shows_app/shared/injection/dependency_injection.dart';
import 'package:tv_shows_app/shared/widgets/main_bottom_navigation.dart';

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
        scaffoldBackgroundColor: AppColors.appBackgroundColor,
        appBarTheme: AppBarTheme(
            backgroundColor: AppColors.appBackgroundColor, elevation: 0),
        primarySwatch: Colors.grey,
      ),
      home: MainNavigation(),
    );
  }
}
