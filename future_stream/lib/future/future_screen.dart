import 'package:flutter/material.dart';
import 'package:future_stream/future/data/model/post.dart';
import 'package:future_stream/future/data/post_api.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  final api = PostApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Future'),
        ),
        body: Center(
          child: Column(
            children: [
              FutureBuilder<Post>(
                  future: api.getPost(1),
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
                    Post post = snapshot.data!;
                    return Text(
                      post.toJson().toString(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    );
                  }),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Future 실행'),
              ),
              FutureBuilder<List<Post>>(
                future: api.getPosts(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }

                  final posts = snapshot.data!;

                  return Expanded(
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return Text(posts[index].title);
                      },
                    ),
                  );
                }
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
