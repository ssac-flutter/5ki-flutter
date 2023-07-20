import 'package:get_it_sample/data/counter.dart';
import 'package:get_it_sample/data/counter_repository.dart';
import 'package:get_it_sample/data/counter_repository_impl.dart';
import 'package:get_it_sample/di/di_setup.dart';
import 'package:get_it_sample/ui/main_view_model.dart';
import 'package:get_it_sample/ui/second_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'ui/main_screen.dart';
import 'ui/second_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => getIt<MainViewModel>(),
          child: MainScreen(),
        );
      },
    ),
    GoRoute(
      path: '/second',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => getIt<MainViewModel>(),
          child: SecondScreen(),
        );
      },
    ),
  ],
);
