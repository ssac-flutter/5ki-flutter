import 'package:go_router/go_router.dart';
import 'package:tada_clone/main/main_screen.dart';

final router = GoRouter(
  initialLocation: '/home_first',
  routes: [
    GoRoute(
      path: '/home_first',
      pageBuilder: (context, state) {
        return const NoTransitionPage(
          child: MainScreen(),
        );
      },
    ),
  ],
);
