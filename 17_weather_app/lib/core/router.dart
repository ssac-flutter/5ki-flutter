import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/di/di_setup.dart';
import 'package:weather_app/presentation/main_screen.dart';
import 'package:weather_app/presentation/main_view_model.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
  ],
);
