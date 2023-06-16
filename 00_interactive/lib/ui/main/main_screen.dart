import 'package:flutter/material.dart';
import 'package:interactive/ui/components/post_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> items = List.generate(100, (index) => Text('$index'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive 예제'),
      ),
      body: ListView(
        children: [
          PostWidget(),
          PostWidget(),
        ],
      ),
    );
  }
}
