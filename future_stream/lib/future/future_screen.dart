import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
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
              FutureBuilder<String>(
                  future: getString(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Error 발생!!!!');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // 로딩
                      return Text(
                        '로딩 중',
                        style: Theme.of(context).textTheme.displayLarge,
                      );
                    }

                    if (snapshot.hasData == false) {
                      // 로딩
                      return Text(
                        '데이터 없음',
                        style: Theme.of(context).textTheme.displayLarge,
                      );
                    }

                    // 로딩 끝
                    String text = snapshot.data!;
                    return Text(
                      text,
                      style: Theme.of(context).textTheme.displayLarge,
                    );
                  }),
              ElevatedButton(
                onPressed: () {
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
