import 'package:flutter/material.dart';

import 'src/navigation/navigation_router.dart';
import 'src/navigation/navigation_routes.dart';
import 'src/presentation/theme/theme.dart';
import 'src/shared/injection/dependency_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSetup();
  runApp(const MyApp());
}

/// Main application widget
class MyApp extends StatelessWidget {
  /// Constructor [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tv Shows App',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.appBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.appBackgroundColor,
          elevation: 0,
        ),
        primarySwatch: Colors.grey,
      ),
      initialRoute: NavigationRoutes.initialRoute,
      navigatorKey: NavigationRouter.navigatorKey,
      onGenerateRoute: NavigationRouter.generateRoute,
    );
  }
}
