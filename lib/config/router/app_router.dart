import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:triki_triki/presentation/screen/button/button_screen.dart';
import 'package:triki_triki/presentation/screen/card/card_screen.dart';
import 'package:triki_triki/presentation/screen/home/home_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const CardsScreen(),
    ),
  ],
);
