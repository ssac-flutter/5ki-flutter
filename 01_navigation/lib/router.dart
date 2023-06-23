import 'package:go_router/go_router.dart';
import 'package:navigation/detail_screen.dart';
import 'package:navigation/main_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
        path: '/main',
        builder: (context, state) => const MainScreen(),
        routes: [
          GoRoute(
            path: 'detail1',
            builder: (context, state) => const DetailScreen(),
          ),
        ]),
    GoRoute(
      path: '/detail2',
      builder: (context, state) => const DetailScreen(),
    ),
  ],
);
