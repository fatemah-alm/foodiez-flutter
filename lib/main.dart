import 'package:flutter/material.dart';
import 'package:foodiez/pages/home.dart';
import 'package:foodiez/pages/signin_page.dart';
import 'package:foodiez/providers/recipe_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<RecipeProvider>(create: (_) => RecipeProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}

final _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/signin',
    builder: (context, state) => SignInPage(),
  ),
]);
