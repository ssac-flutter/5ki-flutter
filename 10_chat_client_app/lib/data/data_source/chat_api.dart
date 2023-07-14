import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

class ChatApi {
  final _wsUrl = Uri.parse('ws://10.0.2.2:4040/ws');
  late WebSocketChannel _channel;

  ChatApi() {
    _channel = WebSocketChannel.connect(_wsUrl);
  }

  Stream<Map<String, dynamic>> getMessageStream() {
    // !!! WebSocket 으로 받는 데이터는 jsonString
    return _channel.stream
        .map((event) => jsonDecode(event) as Map<String, dynamic>);
  }

  void sendMessage(Map<String, dynamic> message) {
    _channel.sink.add(jsonEncode(message));
  }
}
