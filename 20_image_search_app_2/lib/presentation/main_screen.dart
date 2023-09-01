import 'package:flutter/material.dart';
import 'package:image_search_app_2/data/photo_api.dart';
import 'package:image_search_app_2/data/repository/photo_repository_impl.dart';
import 'package:image_search_app_2/presentation/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainViewModel(PhotoRepositoryImpl(photoApi: PhotoApi())),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Image Search App'),
        ),
        body: Column(
          children: [
            SearchBar(),
            Expanded(
              child: PhotoList(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        onChanged: (query) {
          // 검색어가 변경될 때마다 fetchPhotos를 호출합니다.
          Provider.of<MainViewModel>(context, listen: false).fetchPhotos(query);
        },
        decoration: const InputDecoration(
          hintText: 'Search for photos',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class PhotoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MainViewModel>(context);

    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: viewModel.photos.length,
      itemBuilder: (context, index) {
        final photo = viewModel.photos[index];
        return ListTile(
          title: Text('${photo.id}'),
          leading: Image.network(photo.webformatURL),
        );
      },
    );
  }

}