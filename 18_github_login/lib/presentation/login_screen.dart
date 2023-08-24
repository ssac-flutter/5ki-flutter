import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:github_login/main.dart';
import 'package:github_login/presentation/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final todosRef = firestore.collection('todos');

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github 로그인'),
      ),
      body: Center(
        child: Column(
          children: [
            switch (viewModel.isLogin) {
              true => ElevatedButton(
                  onPressed: () {
                    viewModel.logout();
                  },
                  child: const Text('로그아웃'),
                ),
              false => ElevatedButton(
                  onPressed: () {
                    viewModel.login();
                  },
                  child: const Text('로그인'),
                ),
            },
            StreamBuilder<QuerySnapshot>(
              stream: todosRef.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final todoDocs = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: todoDocs.length,
                  itemBuilder: (context, index) {
                    final todo = todoDocs[index].data() as Map<String, dynamic>;
                    final title = todo['title'] ?? 'No Title';

                    return ListTile(
                      title: Text(title),
                    );
                  },
                );
              },
            ),
            StreamBuilder<QuerySnapshot>(
              stream: todosRef.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final todoDocs = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: todoDocs.length,
                  itemBuilder: (context, index) {
                    final todo = todoDocs[index].data()! as Map<String, dynamic>;
                    final title = todo['title'] ?? 'No Title';

                    return ListTile(
                      title: Text(title),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
