import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('main'),
            ElevatedButton(
              onPressed: () {
                context.push('/detail2');
              },
              child: const Text('detail'),
            )
          ],
        ),
      ),
    );
  }
}
