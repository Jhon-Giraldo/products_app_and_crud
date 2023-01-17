import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:crud_cam_rest/screens/screens.dart';
import 'package:crud_cam_rest/services/services.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProductsService())],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen(),
        'product': (_) => const ProductScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
      ),
    );
  }
}
