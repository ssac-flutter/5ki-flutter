import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:github_login/firebase_options.dart';
import 'package:github_login/presentation/login_screen.dart';
import 'package:github_login/presentation/login_view_model.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        create: (_) => LoginViewModel(),
        child: const LoginScreen(),
      ),
    );
  }
}
