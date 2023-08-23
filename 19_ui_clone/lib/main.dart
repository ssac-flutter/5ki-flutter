import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:freeshare/service/cart_service.dart';
import 'package:freeshare/service/lang_service.dart';
import 'package:provider/provider.dart';

import 'service/theme_service.dart';
import 'util/lang/generated/l10n.dart';
import 'util/route_path.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeService(),
        ),
        ChangeNotifierProvider(
          create: (context) => LangService(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: context.watch<LangService>().locale,
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: context.themeService.themeData,
      initialRoute: RoutePath.shopping,
      onGenerateRoute: RoutePath.onGenerateRoute,
    );
  }
}
