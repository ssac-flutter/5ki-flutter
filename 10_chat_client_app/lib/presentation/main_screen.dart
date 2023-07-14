import 'package:chat_client_app/presentation/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final messageTextController = TextEditingController();
  final nameTextController = TextEditingController();

  @override
  void dispose() {
    messageTextController.dispose();
    nameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('채팅'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: viewModel.messages
                    .map((e) => ListTile(
                          title: Text(e.message),
                          subtitle: Text(e.name),
                        ))
                    .toList(),
              ),
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  child: TextField(
                    controller: nameTextController,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        viewModel.sendMessage(
                          nameTextController.text,
                          messageTextController.text,
                        );
                      },
                    )),
                    controller: messageTextController,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
