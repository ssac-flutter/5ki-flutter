import 'package:go_router/go_router.dart';
import 'package:weather_app/presentation/main_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
  ],
);
