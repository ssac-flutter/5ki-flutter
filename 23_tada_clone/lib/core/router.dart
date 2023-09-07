import 'package:go_router/go_router.dart';
import 'package:tada_clone/home/presentation/home_state.dart';
import 'package:tada_clone/home/presentation/section/home_second_section.dart';
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
    GoRoute(
      path: '/home_second',
      pageBuilder: (context, state) {
        return NoTransitionPage(
          child: HomeSecondSection(state: state.extra as HomeState),
        );
      },
    ),
  ],
);
