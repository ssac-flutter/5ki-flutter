import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tada_clone/home/presentation/home_screen.dart';

import '../home/presentation/home_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_) => HomeViewModel(),
        child: const HomeScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.watch_later), label: '예약'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: '혜택'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: '메뉴'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
