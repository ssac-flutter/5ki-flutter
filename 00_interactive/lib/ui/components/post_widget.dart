import 'package:flutter/material.dart';
import 'package:interactive/data/post.dart';
import 'package:interactive/ui/components/custom_button.dart';

class PostWidget extends StatelessWidget {
  final Post post;
  final int favoriteCount;
  final Function(Post post) onFavoritePressed;

  const PostWidget({
    super.key,
    required this.post,
    required this.favoriteCount,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Image.network(
      post.imageUrl,
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildBottom() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          _buildTitle(),
          const SizedBox(height: 30),
          _buildButtons(),
          const SizedBox(height: 30),
          _buildText(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                post.subTitle,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            onFavoritePressed(post);
          },
          child: Row(
            children: [
              Icon(
                post.isFavorite ? Icons.star : Icons.star_border,
                color: Colors.red,
              ),
              Text('$favoriteCount'),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildButtons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          top: Icon(Icons.call),
          bottom: Text('CALL'),
        ),
        CustomButton(
          top: Icon(Icons.call),
          bottom: Text('ROUTE'),
        ),
        CustomButton(
          top: Icon(Icons.call),
          bottom: Text('SHARE'),
        ),
      ],
    );
  }

  Widget _buildText() {
    return Text(
      post.text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
