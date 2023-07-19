import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'ui/main_screen.dart';
import 'ui/second_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/second',
      builder: (context, state) => const SecondScreen(),
    ),
  ],
);
