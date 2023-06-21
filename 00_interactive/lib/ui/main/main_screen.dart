import 'package:flutter/material.dart';
import 'package:interactive/data/post.dart';
import 'package:interactive/data/post_repository.dart';
import 'package:interactive/ui/components/post_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Post> posts = PostRepository().getPosts();
  int favoriteCount = 0;

  @override
  void initState() {
    super.initState();

    setState(() {
      favoriteCount = posts.where((post) => post.isFavorite).length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive 예제'),
      ),
      body: ListView(
        children: posts.map((post) {
          return PostWidget(
            post: post,
            favoriteCount: favoriteCount,
            onFavoritePressed: (post) {
              setState(() {
                posts = posts.map((e) {
                  if (e.id == post.id) {
                    e.isFavorite = !e.isFavorite;
                    return e;
                  }
                  return e;
                }).toList();

                favoriteCount = posts.where((post) => post.isFavorite).length;
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
