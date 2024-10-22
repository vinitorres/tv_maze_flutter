import 'package:flutter/material.dart';
import 'package:tv_shows_app/src/shared/constants/app_colors.dart';
import 'package:tv_shows_app/src/shared/injection/dependency_injection.dart';
import 'package:tv_shows_app/src/navigation/navigation_router.dart';
import 'package:tv_shows_app/src/navigation/navigation_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      initialRoute: NavigationRoutes.initialRoute,
      navigatorKey: NavigationRouter.navigatorKey,
      onGenerateRoute: NavigationRouter.generateRoute,
    );
  }
}
