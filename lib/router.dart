import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gosplash/pages.dart';

class Approuter {
  static GoRouter? goRouter;
  static GoRouter getRouter() {
    if (goRouter == null) {
      initializeRouter();
    }
    return goRouter!;
  }

  static GoRouter initializeRouter([GoRouter? router]) {
    goRouter = router ??
        GoRouter(
          debugLogDiagnostics: true,
          routes: <RouteBase>[
            GoRoute(
              path: '/splash',
              builder: (BuildContext context, GoRouterState state) {
                return const Splashpage();
              },
            ),
            GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) {
                return const Homepage();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'details',
                  builder: (BuildContext context, GoRouterState state) {
                    return const Detailpage();
                  },
                ),
              ],
            ),
          ],
        );
    return goRouter!;
  }
}
