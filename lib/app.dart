import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/initializer/onstart_widget.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/core/router/router.dart';
import 'package:yapdex/core/widgets/splashscreen.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: "YAPDex",
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, child) => Initializer(
        onReady: child!,
        services: [
          pokemonListProvider.notifier,
          currentPokemonProvider.notifier,
          currentPokemonSpeciesProvider.notifier,
        ],
        onLoading: SplashScreen(),
      ),
      // routerConfig: router,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
