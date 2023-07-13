import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:websocket_sample/domain/model/price.dart';

class BinanceApi {
  final _wsUrl = Uri.parse('wss://fstream.binance.com/ws/bnbusdt@aggTrade');

  Stream<Price> getPriceStream() {
    final channel = WebSocketChannel.connect(_wsUrl);

    // !!! WebSocket 으로 받는 데이터는 jsonString 이다
    return channel.stream.map((jsonString) {
      return Price.fromJson(jsonDecode(jsonString));
    });
  }
}