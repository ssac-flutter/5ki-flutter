import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_search_app/ui/main/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imageViewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색 앱'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: controller,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.teal, width: 1),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    imageViewModel.fetchImages(controller.text);
                  },
                ),
                suffixIconColor: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: imageViewModel.photos.length,
              itemBuilder: (context, index) {
                final photo = imageViewModel.photos[index];
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    onTap: () {
                      context.push('/main/detail', extra: photo);
                    },
                    child: Hero(
                      tag: photo.id,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        elevation: 4.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(
                            photo.url,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
