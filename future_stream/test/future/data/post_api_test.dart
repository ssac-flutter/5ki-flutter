import 'package:flutter_test/flutter_test.dart';
import 'package:future_stream/future/data/post_api.dart';

void main() {
  test('post 정보를 잘 가져와야 한다', () async {
    final api = PostApi();

    final post = await api.getPost(1);

    expect(post.id, 1);
    expect(post.title,
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit");
  });

  test('posts 정보를 잘 가져와야 한다', () async {
    final api = PostApi();

    final posts = await api.getPosts();

    expect(posts[0].id, 1);
    expect(posts[0].title,
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit");
    expect(posts.length, 100);
  });
}
