import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  String text = '여기에 표시!!!';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Future'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading)
                Text(
                  '로딩 중',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              if (!isLoading)
                Text(
                  text,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ElevatedButton(
                onPressed: () async {
                  isLoading = true;
                  // 화면 갱신
                  setState(() {});

                  text = await getString();
                  isLoading = false;
                  // 화면 갱신
                  setState(() {});
                },
                child: const Text('Future 실행'),
              ),
            ],
          ),
        ));
  }
}

Future<String> getString() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Hello Future';
}
