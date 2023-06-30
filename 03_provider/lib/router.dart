import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_exam/ui/main_screen.dart';
import 'package:provider_exam/ui/main_view_model.dart';
import 'package:provider_exam/ui/second_screen.dart';

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
