import 'dart:convert';

import 'package:future_stream/future/data/model/post.dart';
import 'package:http/http.dart' as http;

class PostApi {

  Future<Post> getPost(int id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));

    return Post.fromJson(jsonDecode(response.body));
  }

  Future<List<Post>> getPosts() async {
    await Future.delayed(const Duration(seconds: 3));

    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    Iterable jsonArray = jsonDecode(response.body);

    return jsonArray.map((e) => Post.fromJson(e)).toList();
  }
}