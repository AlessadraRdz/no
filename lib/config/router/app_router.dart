import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screen/button/button_screen.dart';
import '../../presentation/screen/cards/card_screen.dart';
import '../../presentation/screen/home/home_screen.dart';
import '../../presentation/screen/progress/progress_screen.dart';

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
    GoRoute(
      path: '/progress',
      name: ProgressScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const ProgressScreen(),
    ),
  ],
);
