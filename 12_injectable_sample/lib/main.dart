import 'package:flutter/material.dart';
import 'package:get_it_sample/data/counter.dart';
import 'package:get_it_sample/di/di_setup.dart';
import 'package:get_it_sample/ui/color_schemes.g.dart';
import 'package:provider/provider.dart';

import 'router.dart';
import 'ui/main_view_model.dart';

void main() async {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
    );
  }
}
