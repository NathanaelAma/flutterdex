import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/router/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Flutter Starter Kit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // builder: (context, child) => Initializer(
      //   services: [
      //     authRepositoryProvider.notifier,
      //   ],
      //   onReady: child!,
      //   onLoading: const Scaffold(
      //     body: Center(
      //       child: CircularProgressIndicator(),
      //     ),
      //   ),
      // ),
      routerConfig: goRouter,
    );
  }
}
