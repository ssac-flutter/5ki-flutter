import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('detail'),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('앞으로'),
            )
          ],
        ),
      ),
    );
  }
}
