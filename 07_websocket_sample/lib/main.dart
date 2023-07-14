import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:websocket_sample/data/data_source/binance_api.dart';
import 'package:websocket_sample/data/repository/price_repository_impl.dart';
import 'package:websocket_sample/domain/repository/price_repository.dart';
import 'package:websocket_sample/presentation/main_screen.dart';
import 'package:websocket_sample/presentation/main_view_model.dart';

void main() {
  final _wsUrl = Uri.parse('ws://10.0.2.2:4040/ws');
  final channel = WebSocketChannel.connect(_wsUrl);
  channel.stream.listen((event) {
    print(event);
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MainViewModel(PriceRepositoryImpl()),
        child: const MainScreen(),
      ),
    );
  }
}
