import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:github_login/data/github_login.dart';
import 'package:github_login/firebase_options.dart';
import 'package:github_login/presentation/login_screen.dart';
import 'package:github_login/presentation/login_view_model.dart';
import 'package:provider/provider.dart';

late final FirebaseAuth auth;
late final FirebaseFirestore firestore;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // ios = localhost, android = 10.0.2.2
  auth = FirebaseAuth.instance..useAuthEmulator('localhost', 9099);
  firestore = FirebaseFirestore.instance..useFirestoreEmulator('localhost', 8080);

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
        create: (_) => LoginViewModel(GithubLogin(auth)),
        child: const LoginScreen(),
      ),
    );
  }
}
