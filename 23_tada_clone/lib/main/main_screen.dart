import 'package:flutter/material.dart';
import 'package:tada_clone/home/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later), label: '예약'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: '혜택'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: '메뉴'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
