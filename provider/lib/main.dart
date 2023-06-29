import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exam/ui/main_screen.dart';
import 'package:provider_exam/ui/main_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => MainViewModel(),
        child: const MainScreen(),
      ),
    );
  }
}
