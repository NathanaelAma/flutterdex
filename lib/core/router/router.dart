import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yapdex/core/guards/authenticated_guard.dart';
import 'package:yapdex/core/widgets/scaffold.dart';

enum AppRoute { pokemon, moves, items, pokemonDetail, moveDetail, itemDetail }

final _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigator');
final _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellNavigator');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/signin',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return AuthenticatedGuard(fallbackRoute: 'signin',child:ScaffoldWithBottomNavBar(child: child));
        },
        navigatorKey: _shellNavigatorKey,
        routes: [
          GoRoute(
            path: "/home",
            name: "home",
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) => const NoTransitionPage(
                child: Text('Home')),
          )
        ],
      ),
      GoRoute(
        path: "/signin",
        name: "signin",
        pageBuilder: (context, state) => const NoTransitionPage(
            child: ScaffoldWithBottomNavBar(child: Text('Signin'))),
      ),
    ],
    observers: [],
  );
});
