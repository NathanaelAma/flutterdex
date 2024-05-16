import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:yapdex/core/router/router.dart';

class Guard extends ConsumerWidget {
  final Future<bool> canActivate;
  final Widget child;
  final String fallbackRoute;

  const Guard({
    super.key,
    required this.canActivate,
    required this.child,
    required this.fallbackRoute,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: canActivate,
      builder: (_, result) {
        if (!result.hasData || result.hasError) {
          return Container();
        }
        final bool canActivate = result.data!;
        if (canActivate) {
          return child;
        }
        redirect(context, ref);
        return Container();
      },
    );
  }

  void redirect(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Navigator.pushReplacementNamed(context, fallbackRoute);
      ref.read(goRouterProvider).pushReplacementNamed(fallbackRoute);
    });
  }
}
