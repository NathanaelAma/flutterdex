import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yapdex/core/data/repositories/authentication_repository.dart';
import 'package:yapdex/core/initializer/onstart_widget.dart';
import 'package:yapdex/core/widgets/scaffold.dart';
import 'package:yapdex/modules/authentication/ui/signin_page.dart';
import 'package:yapdex/modules/pokemon/ui/pokemon_list_screen.dart';

enum AppRoute { pokemon, moves, items, pokemonDetail, moveDetail, itemDetail }

enum AuthRoute { signin, signup }

enum ServicesRoute { initializer }

final _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigator');
final _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellNavigator');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/${AppRoute.pokemon.name}',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          // TODO: Wrap with AuthenticatedGuard for authenticated routes
          return ScaffoldWithBottomNavBar(child: child);
        },
        routes: [
          GoRoute(
            path: "/${AppRoute.pokemon.name}",
            name: AppRoute.pokemon.name,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey, child: const PokemonListScreen()),
          ),
          GoRoute(
            path: "/${AppRoute.moves.name}",
            name: AppRoute.moves.name,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey, child: const Text('Moves')),
          ),
          GoRoute(
            path: "/${AppRoute.items.name}",
            name: AppRoute.items.name,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey, child: const Text('Items')),
          ),
        ],
      ),
      GoRoute(
          path: "/${AuthRoute.signin.name}",
          parentNavigatorKey: _rootNavigatorKey,
          name: AuthRoute.signin.name,
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: SigninPage())),
      GoRoute(
          path: "/${ServicesRoute.initializer.name}",
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) => NoTransitionPage(
              child: Initializer(
                  services: [authRepositoryProvider.notifier],
                  onReady: const SigninPage(),
                  onLoading: const CircularProgressIndicator())))
    ],
    observers: [],
  );
});
